#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../includes/common.h"
#include "../includes/compiler.h"
#include "../includes/scanner.h"

#include "../includes/debug.h"

Iota* compilingIota;
Compiler* current = NULL;

static Iota* currentIota() {
  return compilingIota;
}

static void errorAt(Parser* parser, Token* token, const char* message) {
  if(parser->panicMode) return;
  parser->panicMode = true;

  fprintf(stderr, "[line %d] Error", token->line);

  if(token->type == TOKEN_EOF) {
    fprintf(stderr, " at end");
  } else if(token->type == TOKEN_ERROR) {

  } else {
    fprintf(stderr, " at '%.*s'", token->length, token->start);
  }

  fprintf(stderr, ": %s\n", message);
  parser->hadError = true;
}

static void error(Parser* parser, const char* message) {
  errorAt(parser, &parser->previous, message);
}

static void errorAtCurrent(Parser* parser, const char* message) {
  errorAt(parser, &parser->current, message);
}

static void advance(Parser* parser, Scanner* scanner) {
  parser->previous = parser->current;

  for( ; ; ) {
    parser->current = scanToken(scanner);
    printf("Token: %d\n", parser->current.type);
    if(parser->current.type != TOKEN_ERROR) break;
    errorAtCurrent(parser, parser->current.start);
  }

}

static void consume(Parser* parser, Scanner* scanner, TokenType type, const char* message) {
  if(parser->current.type == type) {
    advance(parser, scanner);
    return;
  }

  errorAtCurrent(parser, message);
}

static bool check(Parser* parser, TokenType type) {
  return parser->current.type == type;
}

static bool match(Parser* parser, Scanner* scanner, TokenType type) {
  if(!check(parser, type))
    return false;
  advance(parser, scanner);
  return true;
}

static void emitByte(Parser* parser, uint8_t byte) {
  writeIota(currentIota(), byte, parser->previous.line);
}

static void emitBytes(Parser* parser, uint8_t byte1, uint8_t byte2) {
  emitByte(parser, byte1);
  emitByte(parser, byte2);
}

static int emitJump(Parser* parser, uint8_t instruction) {
  emitByte(parser, instruction);
  emitByte(parser, 0xff);
  emitByte(parser, 0xff);
  return currentIota()->count - 2;
}

static void emitReturn(Parser* parser) {
  emitByte(parser, OP_RETURN);
}

static uint8_t makeConstant(Parser* parser, Value value) {
  int constant = addConstant(currentIota(), value);
  if(constant > UINT8_MAX) {
    error(parser, "Too many constants in one chunk.");
    return 0;
  }

  return (uint8_t)constant;
}

static void emitConstant(Parser* parser, Value value) {
  emitBytes(parser, OP_CONSTANT, makeConstant(parser, value));
}

static void patchJump(Parser* parser, Scanner* scanner, int offset) {
  // -2 to adjust for the bytecode for the jump offset itself.
  int jump = currentIota()->count - offset - 2;

  if (jump > UINT16_MAX) {
    error(parser, "Too much code to jump over.");
  }

  currentIota()->code[offset] = (jump >> 8) & 0xff;
  currentIota()->code[offset + 1] = jump & 0xff;
}

static void initCompiler(Compiler* compiler) {
  compiler->localCount = 0;
  compiler->scopeDepth = 0;
  current = compiler;
}

static void endCompiler(Parser* parser) {
  emitReturn(parser);
  if(!parser->hadError) {
    disassembleIota(currentIota(), "code");
  }
}

static void beginScope() {
  current->scopeDepth++;
}

static void endScope(Parser* parser) {
  current->scopeDepth--;

  while (current->localCount > 0 &&
         current->locals[current->localCount - 1].depth >
            current->scopeDepth) {
    emitByte(parser, OP_POP);
    current->localCount--;
  }
}

static void expression();
static void statement(Parser* parser, Scanner* scanner, VM* vm);
static void declaration(Parser* parser, Scanner* scanner, VM* vm);
static ParseRule* getRule(TokenType type);
static void parsePrecedence(Parser* parser, Scanner* scanner, Precedence precedence, VM* vm);
static uint8_t identifierConstant(Parser* parser, Token* name, VM* vm);
static int resolveLocal(Parser* parser, Compiler* compiler, Token* name);

static void binary(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  // Remember the operator
  TokenType operatorType = parser->previous.type;

  // Complete the right operand
  ParseRule* rule = getRule(operatorType);
  parsePrecedence(parser, scanner, (Precedence)(rule->precedence + 1), vm);

  // Emit the operator instruction
  switch(operatorType) {
    case TOKEN_BANG_EQUAL: emitBytes(parser, OP_EQUAL, OP_NOT); break;
    case TOKEN_EQUAL_EQUAL: emitByte(parser, OP_EQUAL); break;
    case TOKEN_GREATER: emitByte(parser, OP_GREATER); break;
    case TOKEN_GREATER_EQUAL: emitBytes(parser, OP_LESS, OP_NOT); break;
    case TOKEN_LESS: emitByte(parser, OP_LESS); break;
    case TOKEN_LESS_EQUAL: emitBytes(parser, OP_GREATER, OP_NOT); break;
    case TOKEN_PLUS: emitByte(parser, OP_ADD);  break;
    case TOKEN_MINUS: emitByte(parser, OP_SUBTRACT); break;
    case TOKEN_STAR: emitByte(parser, OP_MULTIPLY); break;
    case TOKEN_SLASH: emitByte(parser, OP_DIVIDE); break;
    case TOKEN_MODULO: emitByte(parser, OP_MODULO); break;
    case TOKEN_POWER: emitByte(parser, OP_POWER); break;
    default:
      return; // Unreachable
  }
}

static void literal(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  switch (parser->previous.type) {
    case TOKEN_FALSE: emitByte(parser, OP_FALSE); break;
    case TOKEN_NIL: emitByte(parser, OP_NIL); break;
    case TOKEN_TRUE: emitByte(parser, OP_TRUE); break;
    default:
      return; // Unreachable.
  }
}

static void grouping(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  expression(parser, scanner, vm);
  consume(parser, scanner, TOKEN_RIGHT_PAREN, "Expect ')' after expression.");
}

static void number(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  double value = strtod(parser->previous.start, NULL);
  emitConstant(parser, NUMBER_VAL(value));
}

static void string(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  emitConstant(parser, OBJ_VAL(copyString(parser->previous.start + 1, parser->previous.length -2, vm)));
}

static void namedVariable(Parser* parser, Scanner* scanner, Token name, VM* vm, bool canAssign) {
  uint8_t getOp, setOp;
  int arg = resolveLocal(parser, current, &name);
  if (arg != -1) {
    getOp = OP_GET_LOCAL;
    setOp = OP_SET_LOCAL;
  } else {
    arg = identifierConstant(parser, &name, vm);
    getOp = OP_GET_GLOBAL;
    setOp = OP_SET_GLOBAL;
  }

  if(canAssign && match(parser, scanner, TOKEN_EQUAL)) {
    expression(parser, scanner, vm);
    emitBytes(parser, setOp, (uint8_t)arg);
  } else {
    emitBytes(parser, getOp, (uint8_t)arg);
  }
}

static void variable(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  namedVariable(parser, scanner, parser->previous, vm, canAssign);
}

static void unary(Parser* parser, Scanner* scanner, VM* vm, bool canAssign) {
  TokenType operatorType = parser->previous.type;

  // Compile the operand
  parsePrecedence(parser, scanner, PREC_UNARY, vm);

  // Emit the operator instruction
  switch(operatorType) {
    case TOKEN_BANG: emitByte(parser, OP_NOT); break;
    case TOKEN_MINUS: emitByte(parser, OP_NEGATE); break;
    default:
      return; // Unreachable
  }
}

ParseRule rules[] = {
  { grouping, NULL,    PREC_NONE },       // TOKEN_LEFT_PAREN
  { NULL,     NULL,    PREC_NONE },       // TOKEN_RIGHT_PAREN
  { NULL,     NULL,    PREC_NONE },       // TOKEN_LEFT_BRACE
  { NULL,     NULL,    PREC_NONE },       // TOKEN_RIGHT_BRACE
  { NULL,     NULL,    PREC_NONE },       // TOKEN_INDENT
  { NULL,     NULL,    PREC_NONE },       // TOKEN_UNINDENT
  { NULL,     NULL,    PREC_NONE },       // TOKEN_BEGIN_BLOCK
  { NULL,     NULL,    PREC_NONE },       // TOKEN_COMMA
  { NULL,     NULL,    PREC_NONE },       // TOKEN_DOT
  { NULL,     binary,  PREC_FACTOR },     // TOKEN_MODULO
  { unary,    binary,  PREC_TERM },       // TOKEN_MINUS
  { NULL,     NULL,    PREC_NONE },       // TOKEN_NEWLINE
  { NULL,     binary,  PREC_POWER },      // TOKEN_POWER
  { NULL,     binary,  PREC_TERM },       // TOKEN_PLUS
  { NULL,     binary,  PREC_FACTOR },     // TOKEN_SLASH
  { NULL,     binary,  PREC_FACTOR },     // TOKEN_STAR
  { unary,    NULL,    PREC_NONE },       // TOKEN_BANG
  { NULL,     binary,  PREC_EQUALITY },   // TOKEN_BANG_EQUAL
  { NULL,     NULL,    PREC_NONE },       // TOKEN_EQUAL
  { NULL,     binary,  PREC_EQUALITY },   // TOKEN_EQUAL_EQUAL
  { NULL,     binary,  PREC_COMPARISON }, // TOKEN_GREATER
  { NULL,     binary,  PREC_COMPARISON }, // TOKEN_GREATER_EQUAL
  { NULL,     binary,  PREC_COMPARISON }, // TOKEN_LESS
  { NULL,     binary,  PREC_COMPARISON }, // TOKEN_LESS_EQUAL
  { variable, NULL,    PREC_NONE },       // TOKEN_IDENTIFIER
  { string,   NULL,    PREC_NONE },       // TOKEN_STRING
  { number,   NULL,    PREC_NONE },       // TOKEN_NUMBER
  { NULL,     NULL,    PREC_NONE },       // TOKEN_AND
  { NULL,     NULL,    PREC_NONE },       // TOKEN_CLASS
  { NULL,     NULL,    PREC_NONE },       // TOKEN_DEF
  { NULL,     NULL,    PREC_NONE },       // TOKEN_ELSE
  { literal,  NULL,    PREC_NONE },       // TOKEN_FALSE
  { NULL,     NULL,    PREC_NONE },       // TOKEN_FOR
  { NULL,     NULL,    PREC_NONE },       // TOKEN_FUN
  { NULL,     NULL,    PREC_NONE },       // TOKEN_IF
  { literal,  NULL,    PREC_NONE },       // TOKEN_NIL
  { NULL,     NULL,    PREC_NONE },       // TOKEN_OR
  { NULL,     NULL,    PREC_NONE },       // TOKEN_PRINT
  { NULL,     NULL,    PREC_NONE },       // TOKEN_RETURN
  { NULL,     NULL,    PREC_NONE },       // TOKEN_SUPER
  { NULL,     NULL,    PREC_NONE },       // TOKEN_THIS
  { literal,  NULL,    PREC_NONE },       // TOKEN_TRUE
  { NULL,     NULL,    PREC_NONE },       // TOKEN_VAR
  { NULL,     NULL,    PREC_NONE },       // TOKEN_WHILE
  { NULL,     NULL,    PREC_NONE },       // TOKEN_ERROR
  { NULL,     NULL,    PREC_NONE },       // TOKEN_EOF
};

static void parsePrecedence(Parser* parser, Scanner* scanner, Precedence precedence, VM* vm) {
  advance(parser, scanner);
  ParseFn prefixRule = getRule(parser->previous.type)->prefix;
  if(prefixRule == NULL) {
    error(parser, "Expect expression.");
    return;
  }

  bool canAssign = precedence <= PREC_ASSIGNMENT;
  prefixRule(parser, scanner, vm, canAssign);

  while(precedence <= getRule(parser->current.type)->precedence) {
    advance(parser, scanner);
    ParseFn infixRule = getRule(parser->previous.type)->infix;
    infixRule(parser, scanner, vm, canAssign);
  }

  if(canAssign && match(parser, scanner, TOKEN_EQUAL)) {
    error(parser, "Invalid assignment target.");
  }
}

static uint8_t identifierConstant(Parser* parser, Token* name, VM* vm) {
  return makeConstant(parser, OBJ_VAL(copyString(name->start, name->length, vm)));
}

static bool identifiersEqual(Token* a, Token* b) {
  if (a->length != b->length) return false;
  return memcmp(a->start, b->start, a->length) == 0;
}

static int resolveLocal(Parser* parser, Compiler* compiler, Token* name) {
  for (int i = compiler->localCount - 1; i >= 0; i--) {
    Local* local = &compiler->locals[i];
    if (identifiersEqual(name, &local->name)) {
      if (local->depth == -1) {
        error(parser, "Cannot read local variable in its own initializer.");
      }
      return i;
    }
  }

  return -1;
}

static void addLocal(Parser* parser, Token name) {
  if (current->localCount == UINT8_COUNT) {
    error(parser, "Too many local variables in function.");
    return;
  }

  Local* local = &current->locals[current->localCount++];
  local->name = name;
  local->depth = -1;
  local->depth = current->scopeDepth;
}

static void declareVariable(Parser* parser) {
  // Global variables are implicitly declared.
  if (current->scopeDepth == 0) return;

  Token* name = &parser->previous;

  for (int i = current->localCount - 1; i >= 0; i--) {
    Local* local = &current->locals[i];
    if (local->depth != -1 && local->depth < current->scopeDepth) {
      break;
    }

    if (identifiersEqual(name, &local->name)) {
      error(parser, "Variable with this name already declared in this scope.");
    }
  }

  addLocal(parser, *name);
}

static uint8_t parseVariable(Parser* parser, Scanner* scanner, VM* vm, const char* errorMessage) {
  consume(parser, scanner, TOKEN_IDENTIFIER, errorMessage);

  declareVariable(parser);
  if (current->scopeDepth > 0) return 0;

  return identifierConstant(parser, &parser->previous, vm);
}

static void markInitialized() {
  current->locals[current->localCount - 1].depth =
      current->scopeDepth;
}

static void namedParser(Parser* parser, Token name, VM* vm) {
  uint8_t arg = identifierConstant(parser, &name, vm);
  emitBytes(parser, OP_GET_GLOBAL, arg);
}

static void defineVariable(Parser* parser, uint8_t global) {
  if (current->scopeDepth > 0) {
    markInitialized();
    return;
  }

  emitBytes(parser, OP_DEFINE_GLOBAL, global);
}

static ParseRule* getRule(TokenType type) {
  return &rules[type];
}

static void expression(Parser* parser, Scanner* scanner, VM* vm) {
  parsePrecedence(parser, scanner, PREC_ASSIGNMENT, vm);
}

static void block(Parser* parser, Scanner* scanner, VM* vm) {
  while (!check(parser, TOKEN_UNINDENT) && !check(parser, TOKEN_EOF)) {
    declaration(parser, scanner, vm);
  }

  consume(parser, scanner, TOKEN_UNINDENT, "Expect 'unindent' after block.");
}

static void varDeclaration(Parser* parser, Scanner* scanner, VM* vm) {
  uint8_t global = parseVariable(parser, scanner, vm, "Expect variable name.");

  if(match(parser, scanner, TOKEN_EQUAL)) {
    expression(parser, scanner, vm);
  } else {
    emitByte(parser, OP_NIL);
  }

  consume(parser, scanner, TOKEN_NEWLINE, "Expect 'newline' after variable declaration.");

  defineVariable(parser, global);
}

static void expressionStatement(Parser* parser, Scanner* scanner, VM* vm) {
  expression(parser, scanner, vm);
  consume(parser, scanner, TOKEN_NEWLINE, "Expect 'newline' character after expression.");
  emitByte(parser, OP_POP);
}

static void ifStatement(Parser* parser, Scanner* scanner, VM* vm) {
  consume(parser, scanner, TOKEN_LEFT_PAREN, "Expect ':' after 'if'.");
  expression(parser, scanner, vm);
  consume(parser, scanner, TOKEN_RIGHT_PAREN, "Expect 'unindent' after condition.");

  int thenJump = emitJump(parser, OP_JUMP_IF_FALSE);
  emitByte(parser, OP_POP);
  statement(parser, scanner, vm);

  int elseJump = emitJump(parser, OP_JUMP);

  patchJump(parser, scanner, thenJump);
  emitByte(parser, OP_POP);

  if (match(parser, scanner, TOKEN_ELSE)) statement(parser, scanner, vm);
  patchJump(parser, scanner, elseJump);
}

static void printStatement(Parser* parser, Scanner* scanner, VM* vm) {
  consume(parser, scanner, TOKEN_LEFT_PAREN, "Expect '(' after print keyword.");
  expression(parser, scanner, vm);
  consume(parser, scanner, TOKEN_RIGHT_PAREN, "Expect ')' after expression in print.");
  consume(parser, scanner, TOKEN_NEWLINE, "Expect 'newline' character after print.");
  emitByte(parser, OP_PRINT);
}

static void synchronize(Parser* parser, Scanner* scanner) {
  parser->panicMode = false;

  while(parser->current.type != TOKEN_EOF) {
    if(parser->previous.type == TOKEN_NEWLINE)
      return;

    switch(parser->current.type) {
      case TOKEN_CLASS:
      case TOKEN_FUN:
      case TOKEN_VAR:
      case TOKEN_FOR:
      case TOKEN_IF:
      case TOKEN_WHILE:
      case TOKEN_PRINT:
      case TOKEN_RETURN:
        return;
      default:
        ;
    }

    advance(parser, scanner);
  }
}

static void statement(Parser* parser, Scanner* scanner, VM* vm) {
  if(match(parser, scanner, TOKEN_PRINT)) {
    printStatement(parser, scanner, vm);
  } else if(match(parser, scanner, TOKEN_IF)) {
    ifStatement(parser, scanner, vm);
  } else if(match(parser, scanner, TOKEN_BEGIN_BLOCK)) {
    beginScope();
    block(parser, scanner, vm);
    endScope(parser);
  }
  else {
    expressionStatement(parser, scanner, vm);
  }
}

static void declaration(Parser* parser, Scanner* scanner, VM* vm) {
  if(match(parser, scanner, TOKEN_VAR)) {
    varDeclaration(parser, scanner, vm);
  } else {
    statement(parser, scanner, vm);
  }

  if(parser->panicMode)
    synchronize(parser, scanner);
}

bool compile(const char* source, Iota* iota, VM* vm) {
  Parser parser;
  Scanner scanner;

  initScanner(&scanner, source);

  Compiler compiler;
  initCompiler(&compiler);

  compilingIota = iota;

  parser.hadError = false;
  parser.panicMode = false;

  advance(&parser, &scanner);

  while(!match(&parser, &scanner, TOKEN_EOF)) {
    declaration(&parser, &scanner, vm);
  }

  endCompiler(&parser);

  return !parser.hadError;
}
