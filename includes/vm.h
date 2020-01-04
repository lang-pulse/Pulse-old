#ifndef pulse_vm_h
#define pulse_vm_h

#include "iota.h"
#include "value.h"

#define STACK_MAX 256

typedef struct {
  Iota* iota;
  uint8_t* ip;
  Value stack[STACK_MAX];
  Value* stackTop;
} VM;

typedef enum {
  INTERPRET_OK,
  INTERPRET_COMPILE_ERROR,
  INTERPRET_RUNTIME_ERROR
} InterpretResult;

void initVM(VM* vm);
void freeVM(VM* vm);
InterpretResult interpret(VM* vm, Iota* iota);
void push(VM* vm, Value value);
Value pop(VM* vm);

#endif
