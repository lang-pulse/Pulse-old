#include <stdio.h>

#include "../includes/debug.h"
#include "../includes/value.h"

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
			case OP_NIL:
	      return simpleInstruction("OP_NIL", offset);
	    case OP_TRUE:
	      return simpleInstruction("OP_TRUE", offset);
	    case OP_FALSE:
	      return simpleInstruction("OP_FALSE", offset);
			case OP_POP:
				return simpleInstruction("OP_POP", offset);
			case OP_GET_GLOBAL:
				return constantInstruction("OP_GET_GLOBAL", iota, offset);
			case OP_DEFINE_GLOBAL:
				return constantInstruction("OP_DEFINE_GLOBAL", iota, offset);
			case OP_SET_GLOBAL:
				return constantInstruction("OP_SET_GLOBAL", iota, offset);
			case OP_EQUAL:
	      return simpleInstruction("OP_EQUAL", offset);
	    case OP_GREATER:
	      return simpleInstruction("OP_GREATER", offset);
	    case OP_LESS:
	      return simpleInstruction("OP_LESS", offset);
			case OP_ADD:
	      return simpleInstruction("OP_ADD", offset);
	    case OP_SUBTRACT:
	      return simpleInstruction("OP_SUBTRACT", offset);
	    case OP_MULTIPLY:
	      return simpleInstruction("OP_MULTIPLY", offset);
	    case OP_DIVIDE:
	      return simpleInstruction("OP_DIVIDE", offset);
			case OP_MODULO:
				return simpleInstruction("OP_MODULO", offset);
			case OP_POWER:
				return simpleInstruction("OP_POWER", offset);
			case OP_NOT:
	      return simpleInstruction("OP_NOT", offset);
	    case OP_NEGATE:
	      return simpleInstruction("OP_NEGATE", offset);
			case OP_PRINT:
				return simpleInstruction("OP_PRINT", offset);
			case OP_RETURN:
				return simpleInstruction("OP_RETURN", offset);
			default:
				printf("Unknown opcode %d\n", instruction);
				return offset+1;
		}
	}
