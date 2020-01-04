#include "includes/common.h"
#include "includes/iota.h"
#include "includes/debug.h"
#include "includes/vm.h"

int main(int argc, char* argv[]) {
  VM vm;
  initVM(&vm);

  Iota iota;
  initIota(&iota);

  int constant = addConstant(&iota, 5);
  writeIota(&iota, OP_CONSTANT, 123);
  writeIota(&iota, constant, 123);

  constant = addConstant(&iota, 2);
  writeIota(&iota, OP_CONSTANT, 123);
  writeIota(&iota, constant, 123);

  writeIota(&iota, OP_POWER, 123);

  writeIota(&iota, OP_RETURN, 124);

  disassembleIota(&iota, "test iota");
  interpret(&vm, &iota);
  freeVM(&vm);
  freeIota(&iota);

  return 0;
}
