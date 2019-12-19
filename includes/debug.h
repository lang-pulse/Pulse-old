#ifndef pulse_debug_h
#define pulse_debug_h

#include "iota.h"

void disassembleIota(Iota* iota, const char* name);
int disassembleInstruction(Iota* iota, int offset);

#endif