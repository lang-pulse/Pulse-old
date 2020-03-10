#ifndef pulse_compiler_h
#define pulse_compiler_h

#include "scanner.h"
#include "object.h"
#include "iota.h"
#include "vm.h"

typedef struct {
  Token name;
  int depth;
} Local;

typedef enum {
  TYPE_FUNCTION,
  TYPE_SCRIPT
} FunctionType;

typedef struct Compiler {
  struct Compiler* enclosing;
  ObjFunction* function;
  FunctionType type;
  Local locals[UINT8_COUNT];
  int localCount;
  int scopeDepth;
} Compiler;

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

ObjFunction* compile(const char* source, VM* vm);
ObjFunction* newFunction(VM* vm);

#endif
