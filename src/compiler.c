#include <stdio.h>
#include <stdlib.h>

#include "../includes/common.h"
#include "../includes/compiler.h"
#include "../includes/scanner.h"

#include "../includes/debug.h"

Iota* compilingIota;

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

static void emitByte(Parser* parser, uint8_t byte) {
  writeIota(currentIota(), byte, parser->previous.line);
}

static void emitBytes(Parser* parser, uint8_t byte1, uint8_t byte2) {
  emitByte(parser, byte1);
  emitByte(parser, byte2);
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

static void endCompiler(Parser* parser) {
  emitReturn(parser);
  if(!parser->hadError) {
    disassembleIota(currentIota(), "code");
  }
}

static void expression();
static ParseRule* getRule(TokenType type);
static void parsePrecedence(Parser* parser, Scanner* scanner, Precedence precedence);

static void binary(Parser* parser, Scanner* scanner) {
  // Remember the operator
  TokenType operatorType = parser->previous.type;

  // Complete the right operand
  ParseRule* rule = getRule(operatorType);
  parsePrecedence(parser, scanner, (Precedence)(rule->precedence + 1));

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

static void literal(Parser* parser) {
  switch (parser->previous.type) {
    case TOKEN_FALSE: emitByte(parser, OP_FALSE); break;
    case TOKEN_NIL: emitByte(parser, OP_NIL); break;
    case TOKEN_TRUE: emitByte(parser, OP_TRUE); break;
    default:
      return; // Unreachable.
  }
}

static void grouping(Parser* parser, Scanner* scanner) {
  expression();
  consume(parser, scanner, TOKEN_RIGHT_PAREN, "Expect ')' after expression.");
}

static void number(Parser* parser, Scanner* scanner) {
  double value = strtod(parser->previous.start, NULL);
  emitConstant(parser, NUMBER_VAL(value));
}

static void string() {
  emitConstant(OBJ_VAL(copyString(parser.previous.start + 1, parser.previous.length -2)));
}

static void unary(Parser* parser, Scanner* scanner) {
  TokenType operatorType = parser->previous.type;

  // Compile the operand
  parsePrecedence(parser, scanner, PREC_UNARY);

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
  { NULL,     NULL,    PREC_NONE },       // TOKEN_IDENTIFIER
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

static void parsePrecedence(Parser* parser, Scanner* scanner, Precedence precedence) {
  advance(parser, scanner);
  ParseFn prefixRule = getRule(parser->previous.type)->prefix;
  if(prefixRule == NULL) {
    error(parser, "Expect expression.");
    return;
  }

  prefixRule(parser, scanner);

  while(precedence <= getRule(parser->current.type)->precedence) {
    advance(parser, scanner);
    ParseFn infixRule = getRule(parser->previous.type)->infix;
    infixRule(parser, scanner);
  }
}

static ParseRule* getRule(TokenType type) {
  return &rules[type];
}

static void expression(Parser* parser, Scanner* scanner) {
  parsePrecedence(parser, scanner, PREC_ASSIGNMENT);
}

bool compile(const char* source, Iota* iota) {
  Parser parser;
  Scanner scanner;

  initScanner(&scanner, source);
  compilingIota = iota;

  parser.hadError = false;
  parser.panicMode = false;

  advance(&parser, &scanner);
  expression(&parser, &scanner);
  consume(&parser, &scanner, TOKEN_NEWLINE, "Expect end of expression.");

  endCompiler(&parser);

  return !parser.hadError;
}
