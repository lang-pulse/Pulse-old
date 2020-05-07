#include <stdio.h>
#include <string.h>

#include "../includes/debug.h"
#include "../includes/value.h"

void disassembleIota(Iota* iota, const char* name){
	printf("== %s ==\n", name);

	FILE* file = fopen("temp.txt", "r");

	char filename[50];

	fscanf(file, "%[^\n]", filename);
	fclose(file);

	strcat(filename, ".bc");

	file = fopen(filename, "w");

	for (int offset=0; offset < iota->count;){
		offset = disassembleInstruction(iota, offset, file);
	}

	fclose(file);
}

static int constantInstruction(const char* name, Iota* iota, int offset, FILE* file){
	uint8_t index = iota->code[offset + 1];
	fprintf(file, "%-16s %4d '", name, index);
	printValueFile(iota->constants.values[index], file);
	fprintf(file, "'\n");
	return offset + 2;
}

static int simpleInstruction(const char* name, int offset, FILE* file){
	fprintf(file, "%s\n", name);
	return offset+1;
}

static int byteInstruction(const char* name, Iota* iota, int offset, FILE* file) {
  uint8_t slot = iota->code[offset + 1];
  fprintf(file, "%-16s %4d\n", name, slot);
  return offset + 2;
}

static int jumpInstruction(const char* name, int sign, Iota* iota, int offset, FILE* file) {
  uint16_t jump = (uint16_t)(iota->code[offset + 1] << 8);
  jump |= iota->code[offset + 2];
  fprintf(file, "%-16s %4d -> %d\n", name, offset, offset + 3 + sign * jump);
  return offset + 3;
}

int disassembleInstruction(Iota* iota, int offset, FILE* file){
	fprintf(file, "%04d ", offset);				//byte offset of given instruction(where in the chunk this instruction is)

	uint8_t instruction = iota->code[offset];		//opcode
	switch(instruction) {
		case OP_CONSTANT:
			return constantInstruction("OP_CONSTANT", iota, offset, file);
		case OP_NIL:
      return simpleInstruction("OP_NIL", offset, file);
    case OP_TRUE:
      return simpleInstruction("OP_TRUE", offset, file);
    case OP_FALSE:
      return simpleInstruction("OP_FALSE", offset, file);
		case OP_POP:
			return simpleInstruction("OP_POP", offset, file);
		case OP_GET_LOCAL:
      return byteInstruction("OP_GET_LOCAL", iota, offset, file);
    case OP_SET_LOCAL:
      return byteInstruction("OP_SET_LOCAL", iota, offset, file);
		case OP_GET_GLOBAL:
			return constantInstruction("OP_GET_GLOBAL", iota, offset, file);
		case OP_DEFINE_GLOBAL:
			return constantInstruction("OP_DEFINE_GLOBAL", iota, offset, file);
		case OP_SET_GLOBAL:
			return constantInstruction("OP_SET_GLOBAL", iota, offset, file);
		case OP_EQUAL:
      return simpleInstruction("OP_EQUAL", offset, file);
    case OP_GREATER:
      return simpleInstruction("OP_GREATER", offset, file);
    case OP_LESS:
      return simpleInstruction("OP_LESS", offset, file);
		case OP_ADD:
      return simpleInstruction("OP_ADD", offset, file);
    case OP_SUBTRACT:
      return simpleInstruction("OP_SUBTRACT", offset, file);
    case OP_MULTIPLY:
      return simpleInstruction("OP_MULTIPLY", offset, file);
		case OP_DIVIDE_INT:
			return simpleInstruction("OP_DIVIDE_INT", offset, file);
    case OP_DIVIDE:
      return simpleInstruction("OP_DIVIDE", offset, file);
		case OP_MODULO:
			return simpleInstruction("OP_MODULO", offset, file);
		case OP_POWER:
			return simpleInstruction("OP_POWER", offset, file);
		case OP_NOT:
      return simpleInstruction("OP_NOT", offset, file);
    case OP_NEGATE:
      return simpleInstruction("OP_NEGATE", offset, file);
		case OP_PRINT:
			return simpleInstruction("OP_PRINT", offset, file);
		case OP_PRINT_END:
			return simpleInstruction("OP_PRINT_END", offset, file);
		case OP_INPUT:
			return simpleInstruction("OP_INPUT", offset, file);
		case OP_INPUT_END:
			return simpleInstruction("OP_INPUT_END", offset, file);
		case OP_JUMP:
      return jumpInstruction("OP_JUMP", 1, iota, offset, file);
    case OP_JUMP_IF_FALSE:
      return jumpInstruction("OP_JUMP_IF_FALSE", 1, iota, offset, file);
		case OP_LOOP:
			return jumpInstruction("OP_LOOP", -1, iota, offset, file);
		case OP_RETURN:
			return simpleInstruction("OP_RETURN", offset, file);
		default:
			fprintf(file, "Unknown opcode %d\n", instruction);
			return offset+1;
	}
}
