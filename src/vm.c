#include <stdio.h>
#include <math.h>

#include "../includes/common.h"
#include "../includes/debug.h"
#include "../includes/vm.h"

static void resetStack(VM* vm) {
  vm->stackTop = vm->stack;
}

void initVM(VM* vm) {
  resetStack(vm);
}

void freeVM(VM* vm) {

}

void push(VM* vm, Value value) {
  *vm->stackTop = value;
  vm->stackTop++;
}

Value pop(VM* vm) {
  vm->stackTop--;
  return *vm->stackTop;
}

void modulo(VM* vm) {
  int b = (int)pop(vm);
  int a = (int)pop(vm);
  push(vm, a % b);
}

void power(VM* vm) {
  double b = pop(vm);
  double a = pop(vm);
  push(vm, pow(a, b));
}

static InterpretResult run(VM* vm) {
#define READ_BYTE() (*vm->ip++)
#define READ_CONSTANT() (vm->iota->constants.values[READ_BYTE()])

#define BINARY_OP(op) \
    do { \
      double b = pop(vm); \
      double a = pop(vm); \
      push(vm, a op b); \
    } while(false) \

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
      case OP_ADD: BINARY_OP(+); break;
      case OP_SUBTRACT: BINARY_OP(-); break;
      case OP_MULTIPLY: BINARY_OP(*); break;
      case OP_DIVIDE: BINARY_OP(/); break;
      case OP_MODULO: modulo(vm); break;
      case OP_POWER: power(vm); break;
      case OP_NEGATE: push(vm, -pop(vm)); break;
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

InterpretResult interpret(VM* vm, Iota* iota) {
  vm->iota = iota;
  vm->ip = vm->iota->code;
  return run(vm);
}
