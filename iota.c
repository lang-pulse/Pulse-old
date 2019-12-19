#include <stdlib.h>

#include "iota.h"
#include "memory.h"

void initIota(Iota* iota){
	iota->count = 0;
	iota->capacity = 0;
	iota->code = NULL;
	iota->line = -1;
	initValueArray(&iota->constants);
}

void freeIota(Iota* iota) {
	FREE_ARRAY(uint8_t, iota->code, iota->capacity);
	freeValueArray(&iota->constants);
	initIota(iota);
}

void writeIota(Iota* iota, uint8_t byte, int line){
	if (iota->capacity < iota->count + 1){
		int oldCapacity = iota->capacity;
		iota->capacity = GROW_CAPACITY(oldCapacity);
		iota->code = GROW_ARRAY(iota->code, uint8_t, oldCapacity, iota->capacity);
	}

	iota->code[iota->count] = byte;
	iota->line = line;
	iota->count++;
}

int addConstant(Iota* iota, Value value){
	writeValueArray(&iota->constants, value);
	return iota->constants.count - 1;		//index where it is appended so that it can be located later
}
