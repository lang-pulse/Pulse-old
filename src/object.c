#include <stdio.h>
#include <string.h>

#include "../includes/memory.h"
#include "../includes/object.h"
#include "../includes/value.h"
#include "../includes/vm.h"

#define ALLOCATE_OBJ(type, objectType, vm) \
	(type*)allocateObject(sizeof(type), objectType, vm)

static Obj* allocateObject(size_t size, ObjType type, VM* vm) {
	Obj* object = (Obj*)reallocate(NULL, 0, size);
	object->type = type;

	object->next = vm->objects;
  vm->objects = object;

	return object;
}

static ObjString* allocateString(char* chars, int length) {
	VM vm;
	ObjString* string = ALLOCATE_OBJ(ObjString, OBJ_STRING, &vm);
	string->length = length;
	string->chars = chars;

	return string;
}

ObjString* takeString(char* chars, int length) {
  return allocateString(chars, length);
}

ObjString* copyString(const char* chars, int length) {
	char* headChars = ALLOCATE(char, length+1);
	memcpy(headChars, chars, length);
	headChars[length] = '\0';

	return allocateString(headChars, length);
}

void printObject(Value value) {
	switch (OBJ_TYPE(value)) {
		case OBJ_STRING:
			printf("%s", AS_CSTRING(value));
			break;
	}
}
