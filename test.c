#include "includes/common.h"
#include "includes/iota.h"
#include "includes/debug.h"
#include "includes/scanner.h"
#include "includes/vm.h"

int main(int argc, char* argv[]) {
  VM vm;
  Scanner scanner;
  initVM(&vm);

  Iota iota;
  initIota(&iota);

  int constant = addConstant(&iota, 5);
  writeIota(&iota, OP_CONSTANT, 123);
  writeIota(&iota, constant, 123);

  constant = addConstant(&iota, 2);
  writeIota(&iota, OP_CONSTANT, 123);
  writeIota(&iota, constant, 123);

  constant = addConstant(&iota, 2);
  writeIota(&iota, OP_CONSTANT, 123);
  writeIota(&iota, constant, 123);

  writeIota(&iota, OP_POWER, 123);
  writeIota(&iota, OP_MODULO, 123);

  writeIota(&iota, OP_RETURN, 124);

  disassembleIota(&iota, "test iota");
  const char* source = "Hello";
  interpret(&scanner, source);
  freeVM(&vm);
  freeIota(&iota);

  return 0;
}
