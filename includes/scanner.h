#ifndef pulse_scanner_h
#define pulse_scanner_h

typedef enum {
  // Single-character tokens.
  TOKEN_LEFT_PAREN, TOKEN_RIGHT_PAREN,  // 1
  TOKEN_LEFT_BRACE, TOKEN_RIGHT_BRACE,  // 3
  TOKEN_INDENT, TOKEN_UNINDENT, TOKEN_BEGIN_BLOCK,  // 6
  TOKEN_COMMA, TOKEN_DOT, TOKEN_MODULO,  // 9
  TOKEN_MINUS, TOKEN_NEWLINE, TOKEN_SEMICOLON, TOKEN_POWER, // 13
  TOKEN_PLUS, TOKEN_SLASH, TOKEN_SLASH_INT, TOKEN_STAR,  // 17

  // One or two character tokens.
  TOKEN_BANG, TOKEN_BANG_EQUAL,  // 19
  TOKEN_EQUAL, TOKEN_EQUAL_EQUAL,  // 21
  TOKEN_GREATER, TOKEN_GREATER_EQUAL,  // 23
  TOKEN_LESS, TOKEN_LESS_EQUAL,  // 25

  // Literals.
  TOKEN_IDENTIFIER, TOKEN_STRING, TOKEN_NUMBER,  // 28

  // Keywords.
  TOKEN_AND, TOKEN_CLASS, TOKEN_DEF, TOKEN_ELSE, TOKEN_FALSE,  // 33
  TOKEN_FOR, TOKEN_FUN, TOKEN_IF, TOKEN_NIL, TOKEN_OR,  // 38
  TOKEN_PRINT, TOKEN_RETURN, TOKEN_SUPER, TOKEN_THIS,  // 42
  TOKEN_TRUE, TOKEN_VAR, TOKEN_WHILE,  // 45

  TOKEN_ERROR,  // 46
  TOKEN_EOF    //47
} TokenType;

typedef struct {
  TokenType type;
  const char* start;
  int length;
  int line;
} Token;

typedef struct {
  const char* start;
  const char* current;
  int line;
  int indentLevel;
  bool isIndent;
  bool isUnindent;
  int unindentLevel;
} Scanner;

void initScanner(Scanner* scanner, const char* source);
Token scanToken(Scanner* scanner);

#endif
