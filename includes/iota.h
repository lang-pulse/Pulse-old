#ifndef pulse_iota_h
#define pulse_iota_h

#include "common.h"
#include "value.h"

typedef enum {
  OP_CONSTANT,
  OP_NIL,
  OP_TRUE,
  OP_FALSE,
  OP_EQUAL,
  OP_GREATER,
  OP_LESS,
  OP_ADD,
  OP_SUBTRACT,
  OP_MULTIPLY,
  OP_DIVIDE,
  OP_NOT,
	OP_MODULO,
	OP_POWER,
  OP_NEGATE,
  OP_RETURN,
} OpCode;

typedef struct {
	int count;			// number of those allocated entries actually in use
	int capacity;		//number of elements in the array we have allocated
	uint8_t* code;
	int line;
	ValueArray constants;
} Iota;

void initIota(Iota* iota);		//initialize new chunk
void writeIota(Iota* iota, uint8_t byte,int line); 	//to append a byte to the end of the chunk
int addConstant(Iota* iota, Value value);
void freeIota(Iota* iota);

#endif
