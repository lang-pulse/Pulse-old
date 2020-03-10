#include <stdarg.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../includes/common.h"
#include "../includes/compiler.h"
#include "../includes/debug.h"
#include "../includes/object.h"
#include "../includes/memory.h"
#include "../includes/scanner.h"
#include "../includes/vm.h"
#include "../includes/iota.h"

#define BOUND 8

static void defineNative(VM* vm, const char* name, NativeFn function);

static Value clockNative(int argCount, Value* args) {
  return NUMBER_VAL((double)clock() / CLOCKS_PER_SEC);
}

void initVM(VM* vm) {
  vm->top = -1;
  vm->length = 0;
  vm->objects = NULL;
  vm->frameCount = 0;
  initTable(&vm->globals);
  initTable(&vm->strings);

  defineNative(vm, "clock", clockNative);
}

static void runtimeError(VM* vm, const char* format, ...) {
  va_list args;
  va_start(args, format);
  vfprintf(stderr, format, args);
  va_end(args);
  fputs("\n", stderr);

  for(int i = vm->frameCount - 1; i >= 0; i--) {
    CallFrame* frame = &vm->frames[i];
    ObjFunction* function = frame->closure->function;

    size_t instruction = frame->ip - function->iota.code - 1;
    fprintf(stderr, "[line %d] in ", function->iota.line);
    if(function->name == NULL) {
      fprintf(stderr, "script\n");
    } else {
      fprintf(stderr, "%s()\n", function->name->chars);
    }
  }

  initVM(vm);
}

static void defineNative(VM* vm, const char* name, NativeFn function) {
  push(vm, OBJ_VAL(copyString(name, (int)strlen(name), vm)));
  push(vm, OBJ_VAL(newNative(function, vm)));
  tableSet(&vm->globals, AS_STRING(vm->stack[0]), vm->stack[1]);
  pop(vm);
  pop(vm);
}

void freeVM(VM* vm) {
  freeTable(&vm->globals);
  freeTable(&vm->strings);
  freeObjects(vm);
}

Value* create_new(VM* vm, Value* a) {
  Value* new_a = (Value*)malloc(vm->length + BOUND);
  for(int i=0; i<vm->length; i++)
    new_a[i] = a[i];
  vm->length += BOUND;
  return new_a;
}

void printStack(VM* vm) {
  printf("\nStack print\n");
  for(int i = 0; i<vm->length; i++) {
    printValue(vm->stack[i]);
    printf("--");
  }
  printf("\n");
}

void push(VM* vm, Value val) {
  if(vm->top == vm->length - 1)
    vm->stack = create_new(vm, vm->stack);
  vm->stack[++vm->top] = val;

  printStack(vm);
}

Value pop(VM* vm) {
  return vm->stack[vm->top--];
}

static Value peek(VM* vm, int distance) {
  return vm->stack[distance];
}

static bool call(ObjClosure* closure, int argCount, VM* vm) {
  printf("\nFunction arity = %d, argCount = %d\n", closure->function->arity, argCount);
  if(argCount != closure->function->arity) {
    runtimeError(vm, "Expected %d arguments but got %d.", closure->function->arity, argCount);
    return false;
  }

  if(vm->frameCount == FRAMES_MAX) {
    runtimeError(vm, "Stack overflow.");
    return false;
  }

  CallFrame* frame = &vm->frames[vm->frameCount++];
  frame->closure = closure;
  frame->ip = closure->function->iota.code;
  frame->slots = &vm->stack[vm->top - argCount - 1];

  return true;
}

static bool callValue(Value callee, int argCount, VM* vm) {
  if(IS_OBJ(callee)) {
    switch(OBJ_TYPE(callee)) {
      case OBJ_CLOSURE:
        return call(AS_CLOSURE(callee), argCount, vm);
      case OBJ_NATIVE: {
        NativeFn native = AS_NATIVE(callee);
        Value result = native(argCount, &vm->stack[vm->top - argCount]);
        vm->top -= argCount + 1;
        push(vm, result);
        return true;
      }
      default:
        // Non-callable object type.
        break;
    }
  }

  runtimeError(vm, "Can call only functions and classes.");
  return false;
}

static bool isFalsey(Value value) {
  return IS_NIL(value) || (IS_BOOL(value) && !AS_BOOL(value));
}

static void concatenate(VM* vm) {
  ObjString* b = AS_STRING(pop(vm));
  ObjString* a = AS_STRING(pop(vm));

  int length = a->length + b->length;
  char* chars = ALLOCATE(char, length + 1);
  memcpy(chars, a->chars, a->length);
  memcpy(chars + a->length, b->chars, b->length);
  chars[length] = '\0';

  ObjString* result = takeString(chars, length, vm);
  push(vm, OBJ_VAL(result));
}

static void multiply_string(VM* vm, int pos) {
  double multiplicand;
  ObjString* string;
  if(pos == 0) {
    multiplicand = AS_NUMBER(pop(vm));
    string = AS_STRING(pop(vm));
  } else if(pos == 1) {
    string = AS_STRING(pop(vm));
    multiplicand = AS_NUMBER(pop(vm));
  }

  int length = string->length * (int)multiplicand;
  char* chars = ALLOCATE(char, length + 1);
  for(int i=0; i<multiplicand; i++) {
    memcpy(chars + (string->length * i), string->chars, string->length);
  }
  chars[length] = '\0';

  ObjString* result = takeString(chars, length, vm);
  push(vm, OBJ_VAL(result));
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
    CallFrame* frame = &vm->frames[vm->frameCount - 1];

#define READ_BYTE() (*frame->ip++)
#define READ_CONSTANT() (frame->closure->function->iota.constants.values[READ_BYTE()])
#define READ_SHORT() \
    (frame->ip += 2, (uint16_t)((frame->ip[-2] << 8) | frame->ip[-1]))
#define READ_STRING() AS_STRING(READ_CONSTANT())

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
    for(Value* slot = vm->stack; slot < vm->stackTop; slot++) {
      printf("[ ");
      printValue(*slot);
      printf(" ]");
    }
    printf("\n");
    disassembleInstruction(&frame->closure->function->iota, (int)(frame->ip - frame->closure->function->iota->code));
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
      case OP_POP: pop(vm); break;
      case OP_GET_LOCAL: {
        uint8_t slot = READ_BYTE();
        push(vm, frame->slots[slot]);
        break;
      }
      case OP_SET_LOCAL: {
        uint8_t slot = READ_BYTE();
        frame->slots[slot] = peek(vm, 0);
        break;
      }
      case OP_GET_GLOBAL: {
        ObjString* name = READ_STRING();
        Value value;
        if(!tableGet(&vm->globals, name, &value)) {
          runtimeError(vm, "Undefined variable '%s'.", name->chars);
          return INTERPRET_COMPILE_ERROR;
        }
        push(vm, value);
        break;
      }
      case OP_DEFINE_GLOBAL: {
        ObjString* name = READ_STRING();
        tableSet(&vm->globals, name, peek(vm, 0));
        pop(vm);
        break;
      }
      case OP_SET_GLOBAL: {
        ObjString* name = READ_STRING();
        if(tableSet(&vm->globals, name, peek(vm, 0))) {
          tableDelete(&vm->globals, name);
          runtimeError(vm, "Undefined variable '%s'.", name->chars);
          return INTERPRET_RUNTIME_ERROR;
        }
        break;
      }
      case OP_EQUAL: {
        Value b = pop(vm);
        Value a = pop(vm);
        push(vm, BOOL_VAL(valuesEqual(a, b)));
        break;
      }
      case OP_GREATER:BINARY_OP(BOOL_VAL, >); break;
      case OP_LESS: BINARY_OP(BOOL_VAL, <); break;
      case OP_ADD: {
        if (IS_STRING(peek(vm, 0)) && IS_STRING(peek(vm, 1))) {
          concatenate(vm);
        } else if (IS_NUMBER(peek(vm, 0)) && IS_NUMBER(peek(vm, 1))) {
          double b = AS_NUMBER(pop(vm));
          double a = AS_NUMBER(pop(vm));
          push(vm, NUMBER_VAL(a + b));
        } else {
          runtimeError(vm, "Operands must be two numbers or two strings.");
          return INTERPRET_RUNTIME_ERROR;
        }
        break;
      }
      case OP_SUBTRACT: BINARY_OP(NUMBER_VAL, -); break;
      case OP_MULTIPLY: {
        if(IS_STRING(peek(vm, 0)) && IS_NUMBER(peek(vm, 1))) {
          multiply_string(vm, 0);
        } else if(IS_NUMBER(peek(vm, 0)) && IS_STRING(peek(vm, 1))) {
          multiply_string(vm, 1);
        } else if(IS_NUMBER(peek(vm, 0)) && IS_NUMBER(peek(vm, 1))) {
          BINARY_OP(NUMBER_VAL, *);
        } else {
          runtimeError(vm, "Operands must be either combination of string and number or numbers only.");
          return INTERPRET_RUNTIME_ERROR;
        }
        break;
      }
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
      case OP_PRINT: {
        printValue(pop(vm));
        printf("\n");
        break;
      }
      case OP_JUMP: {
        uint16_t offset = READ_SHORT();
        frame->ip += offset;
        break;
      }
      case OP_JUMP_IF_FALSE: {
        uint16_t offset = READ_SHORT();
        if (isFalsey(peek(vm, 0))) frame->ip += offset;
        break;
      }
      case OP_LOOP: {
        uint16_t offset = READ_SHORT();
        frame->ip -= offset;
        break;
      }
      case OP_CALL: {
        int argCount = READ_BYTE();
        printf("\nFunction arity = %d\n", AS_CLOSURE(peek(vm, argCount))->function->arity);
        if(!callValue(peek(vm, argCount), argCount, vm)) {
          return INTERPRET_RUNTIME_ERROR;
        }
        frame = &vm->frames[vm->frameCount - 1];
        break;
      }
      case OP_CLOSURE: {
        ObjFunction* function = AS_FUNCTION(READ_CONSTANT());
        ObjClosure* closure = newClosure(function, vm);
        push(vm, OBJ_VAL(closure));
        break;
      }
      case OP_RETURN: {
        Value result = pop(vm);

        vm->frameCount--;
        if(vm->frameCount == 0) {
          pop(vm);
          return INTERPRET_OK;
        }

        vm->stack[vm->top] = *frame->slots;
        push(vm, result);

        frame = &vm->frames[vm->frameCount - 1];
        break;
      }
    }
  }

#undef READ_CONSTANT
#undef READ_SHORT
#undef READ_STRING
#undef READ_BYTE
#undef BINARY_OP
}

InterpretResult interpret(VM* vm, const char* source) {
  ObjFunction* function = compile(source, vm);
  if(function == NULL) return INTERPRET_COMPILE_ERROR;

  push(vm, OBJ_VAL(function));
  ObjClosure* closure = newClosure(function, vm);
  pop(vm);
  push(vm, OBJ_VAL(closure));
  callValue(OBJ_VAL(closure), 0, vm);

  return run(vm);
}
