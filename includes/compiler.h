#ifndef pulse_compiler_h
#define pulse_compiler_h

#include "scanner.h"
#include "object.h"
#include "iota.h"
#include "vm.h"

typedef struct {
  Token current;
  Token previous;
  bool hadError;
  bool panicMode;
} Parser;

typedef enum {
  PREC_NONE,
  PREC_ASSIGNMENT,
  PREC_OR,
  PREC_AND,
  PREC_EQUALITY,
  PREC_COMPARISON,
  PREC_TERM,
  PREC_FACTOR,
  PREC_POWER,
  PREC_UNARY,
  PREC_CALL,
  PREC_PRIMARY,
} Precedence;

typedef void (*ParseFn)(Parser* parser, Scanner* scanner, VM* vm, bool canAssign);

typedef struct {
  ParseFn prefix;
  ParseFn infix;
  Precedence precedence;
} ParseRule;

bool compile(const char* source, Iota* iota, VM* vm);

#endif
