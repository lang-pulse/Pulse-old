#include <stdio.h>

#include "../includes/common.h"
#include "../includes/compiler.h"
#include "../includes/scanner.h"

void compile(Scanner* scanner, const char* source) {
  initScanner(scanner, source);

  int line = -1;
  for( ; ; ) {
    Token token = scanToken(scanner);
    if(token.line != line) {
      printf("%4d ", token.line);
      line = token.line;
    } else {
      printf("   | ");
    }
    printf("%2d '%*.s'\n", token.type, token.length, token.start);

    if(token.type == TOKEN_EOF) break;
  }
}
