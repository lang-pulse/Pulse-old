#include <stdarg.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "../includes/common.h"
#include "../includes/compiler.h"
#include "../includes/debug.h"
#include "../includes/scanner.h"
#include "../includes/vm.h"
#include "../includes/iota.h"

#define BOUND 256

void initVM(VM* vm) {
  vm->top = -1;
  vm->length = 0;
}

static void runtimeError(VM* vm, const char* format, ...) {
  va_list args;
  va_start(args, format);
  vfprintf(stderr, format, args);
  va_end(args);
  fputs("\n", stderr);

  size_t instruction = vm->ip - vm->iota->code;
  int line = vm->iota->line;
  fprintf(stderr, "[line %d] in script\n", line);

  initVM(vm);
}

void freeVM(VM* vm) {

}

Value* create_new(VM* vm, Value* a) {
  Value* new_a = (Value*)malloc(vm->length + BOUND);
  for(int i=0; i<vm->length; i++)
    new_a[i] = a[i];
  vm->length += BOUND;
  return new_a;
}

void push(VM* vm, Value val) {
  if(vm->top == vm->length - 1)
    vm->stack = create_new(vm, vm->stack);
  vm->stack[++vm->top] = val;
}

Value pop(VM* vm) {
  return vm->stack[vm->top--];
}

static Value peek(VM* vm, int distance) {
  return vm->stack[distance];
}

static bool isFalsey(Value value) {
  return IS_NIL(value) || (IS_BOOL(value) && !AS_BOOL(value));
}

void modulo(VM* vm) {
  int b = (int)AS_NUMBER(pop(vm));
  int a = (int)AS_NUMBER(pop(vm));
  push(vm, NUMBER_VAL(a % b));
}

void power(VM* vm) {
  double b = AS_NUMBER(pop(vm));
  double a = AS_NUMBER(pop(vm));
  push(vm, NUMBER_VAL(pow(a, b)));
}

static InterpretResult run(VM* vm) {
#define READ_BYTE() (*vm->ip++)
#define READ_CONSTANT() (vm->iota->constants.values[READ_BYTE()])

#define BINARY_OP(valueType, op) \
    do { \
      if (!IS_NUMBER(peek(vm, 0)) || !IS_NUMBER(peek(vm, 1))) { \
        runtimeError(vm, "Operands must be numbers."); \
        return INTERPRET_RUNTIME_ERROR; \
      } \
      \
      double b = AS_NUMBER(pop(vm)); \
      double a = AS_NUMBER(pop(vm)); \
      push(vm, valueType(a op b)); \
    } while (false)

  for( ; ; ) {
#ifndef DEBUG_TRACE_EXECUTION
    printf("          ");
    for(Value* slot = vm.stack; slot < vm.stackTop; slot++) {
      printf("[ ");
      printValue(*slot);
      printf(" ]");
    }
    printf("\n");
    disassembleInstruction(vm.iota, (int)(vm.ip - vm.iota->code));
#endif
    uint8_t instruction;
    switch(instruction = READ_BYTE()) {
      case OP_CONSTANT: {
        Value constant = READ_CONSTANT();
        push(vm, constant);
        break;
      }
      case OP_NIL: push(vm, NIL_VAL); break;
      case OP_TRUE: push(vm, BOOL_VAL(true)); break;
      case OP_FALSE: push(vm, BOOL_VAL(false)); break;
      case OP_EQUAL: {
        Value b = pop(vm);
        Value a = pop(vm);
        push(vm, BOOL_VAL(valuesEqual(a, b)));
        break;
      }
      case OP_GREATER:BINARY_OP(BOOL_VAL, >); break;
      case OP_LESS: BINARY_OP(BOOL_VAL, <); break;
      case OP_ADD: BINARY_OP(NUMBER_VAL, +); break;
      case OP_SUBTRACT: BINARY_OP(NUMBER_VAL, -); break;
      case OP_MULTIPLY: BINARY_OP(NUMBER_VAL, *); break;
      case OP_DIVIDE: BINARY_OP(NUMBER_VAL, /); break;
      case OP_MODULO: modulo(vm); break;
      case OP_POWER: power(vm); break;
      case OP_NOT:
        push(vm, BOOL_VAL(isFalsey(pop(vm))));
        break;
       case OP_NEGATE:
       if (!IS_NUMBER(peek(vm, 0))) {
         runtimeError(vm, "Operand must be a number.");
         return INTERPRET_RUNTIME_ERROR;
       }

       push(vm, NUMBER_VAL(-AS_NUMBER(pop(vm))));
       break;
      case OP_RETURN: {
        printValue(pop(vm));
        printf("\n");
        return INTERPRET_OK;
      }
    }
  }

#undef BINARY_OP
#undef READ_CONSTANT
#undef READ_BYTE
}

InterpretResult interpret(VM* vm, const char* source) {
  Iota iota;
  initIota(&iota);

  if(!compile(source, &iota)) {
    freeIota(&iota);
    return INTERPRET_COMPILE_ERROR;
  }

  vm->iota = &iota;
  vm->ip = vm->iota->code;

  InterpretResult result = run(vm);

  freeIota(&iota);
  return result;
}
