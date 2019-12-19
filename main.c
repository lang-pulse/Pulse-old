#include "common.h"
#include "iota.h"
#include "debug.h"

int main(int argc, const char* argv[]){
	Iota iota;
	initIota(&iota);

	int constant = addConstant(&iota, 1.2);
	writeIota(&iota, OP_CONSTANT, 123);
	writeIota(&iota, constant, 123);

	writeIota(&iota, OP_RETURN, 124);

	disassembleIota(&iota, "test iota");		//disassemble all instructions in the entire chunk

	freeIota(&iota);
	return 0;
}
