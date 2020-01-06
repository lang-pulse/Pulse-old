#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#include "../includes/common.h"
#include "../includes/debug.h"
#include "../includes/vm.h"

#define BOUND 256

void initVM(VM* vm) {
  vm->top = -1;
  vm->length = 0;
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

void display(VM* vm) {
  if (vm->top == -1)
      printf("Stack is Empty\n");
  else {
      printf("Stack: ");
      for (int i = 0; i <= vm->top; i++)
          printf("%.1f ", vm->stack[i]);
      printf("\n");
  }
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
