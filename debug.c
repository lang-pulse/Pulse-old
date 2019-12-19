#include <stdio.h>
#include "debug.h"
#include "value.h"

void disassembleIota(Iota* iota, const char* name){
	printf("== %s ==\n", name);

	for (int offset=0; offset < iota->count;){
		offset = disassembleInstruction(iota, offset);
	}
}

static int constantInstruction(const char* name, Iota* iota, int offset){
	uint8_t index = iota->code[offset + 1];
	printf("%-16s %4d '", name, index);
	printValue(iota->constants.values[index]);
	printf("'\n");
	return offset + 2;
}

static int simpleInstruction(const char* name, int offset){
		printf("%s\n", name);
		return offset+1;
	}

int disassembleInstruction(Iota* iota, int offset){
		printf("%04d ", offset);				//byte offset of given instruction(where in the chunk this instruction is)

		uint8_t instruction = iota->code[offset];		//opcode
		switch(instruction) {
			case OP_CONSTANT:
				return constantInstruction("OP_CONSTANT", iota, offset);
			case OP_RETURN:
				return simpleInstruction("OP_RETURN", offset);
			default:
				printf("Unknown opcode %d\n", instruction);
				return offset+1;
		}
	}
