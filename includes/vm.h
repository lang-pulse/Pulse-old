#ifndef pulse_vm_h
#define pulse_vm_h

#include "object.h"
#include "scanner.h"
#include "table.h"
#include "value.h"

#define FRAMES_MAX 64

typedef struct {
  ObjClosure* closure;
  uint8_t* ip;
  Value* slots;
} CallFrame;

typedef struct {
  CallFrame frames[FRAMES_MAX];
  int frameCount;
  Value *stack;
  int top;
  int length;
  Table globals;
  Table strings;
  Obj* objects;
} VM;

typedef enum {
  INTERPRET_OK,
  INTERPRET_COMPILE_ERROR,
  INTERPRET_RUNTIME_ERROR
} InterpretResult;

void initVM(VM* vm);
void freeVM(VM* vm);
InterpretResult interpret(VM* vm, const char* source);
void push(VM* vm, Value value);
Value pop(VM* vm);
ObjString* takeString(char* chars, int length, VM* vm);
ObjString* copyString(const char* chars, int length, VM* vm);
ObjNative* newNative(NativeFn function, VM* vm);
ObjClosure* newClosure(ObjFunction* function, VM* vm);

#endif
