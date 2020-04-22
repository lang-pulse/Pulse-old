#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "includes/common.h"
#include "includes/debug.h"
#include "includes/iota.h"
#include "includes/scanner.h"
#include "includes/vm.h"

#define VERSION "v0.0.0"

const char *get_filename_ext(const char *filename) {
    const char *dot = strrchr(filename, '.');
    if(!dot || dot == filename) return "";
    return dot + 1;
}

static void repl(VM *vm) {
  char line[1024];
  for( ; ; ) {
    printf("> ");

    if(!fgets(line, sizeof(line), stdin)) {
      printf("\n");
      break;
    }

    if(strcmp(line, "exit\n") == 0) {
      printf("Thank you for using Pulse\n");
      return;
    }

    interpret(vm, line);
  }
}

static char* readFile(const char* path) {
  FILE* file = fopen(path, "rb");
  if(file == NULL) {
    fprintf(stderr, "Could not open file \"%s\".\n", path);
    exit(74);
  }

  fseek(file, 0L, SEEK_END);
  size_t fileSize = ftell(file);
  rewind(file);

  char* buffer = (char *)malloc(fileSize + 1);
  if(buffer == NULL) {
    fprintf(stderr, "Not enough memory to read \"%s\".\n", path);
    exit(74);
  }

  size_t bytesRead = fread(buffer, sizeof(char), fileSize, file);
  if(bytesRead < fileSize) {
    fprintf(stderr, "Could not read file \"%s\".\n", path);
    exit(74);
  }

  buffer[bytesRead] = '\0';

  fclose(file);
  return buffer;
}

static void runFile(VM* vm, const char* path) {
  char* source = readFile(path);

  FILE* file = fopen("temp.txt", "w");
  fprintf(file, "%s", path);
  fclose(file);

  InterpretResult result = interpret(vm, source);

  remove("temp.txt");

  free(source);

  if(result == INTERPRET_COMPILE_ERROR) exit(65);
  if(result == INTERPRET_RUNTIME_ERROR) exit(70);
}

int main(int argc, char* argv[]) {
  VM vm;
  initVM(&vm);

  if(argc == 1) {
    repl(&vm);
  } else if(argc == 2) {
    if(strcmp(argv[1], "version") == 0) {
      printf("\nPulse version\n=============\n");
      puts(VERSION);
      printf("\n");
    } else {
      if(strcmp(get_filename_ext(argv[1]), "pls") != 0) {
        printf("Invalid file extension!\n");
        printf("Usage pulse [filename][author]\n");
        exit(64);
      }
      char* temp = argv[1];
      remove(strcat(temp, ".bc"));
      int len = strlen(argv[1]);
      argv[1][len - 1] = '\0';
      argv[1][len - 2] = '\0';
      argv[1][len - 3] = '\0';
      runFile(&vm, argv[1]);
    }
  } else if(argc == 3) {
    if(strcmp(argv[2], "author") != 0) {
      printf("Invalid command syntax!\n");
      printf("Usage pulse [filename][author]\n");
      exit(64);
    }
    char *buffer = readFile(argv[1]);

    int len = strlen(buffer);
    int i, f = 0;
    int pos = -1;

    for(i = 0; i < len; i++) {
      if(buffer[i] == '~') {
        pos = i;
        break;
      }
    }
    if(pos == -1) {
      printf("Cannot find author token in the pulse file!\n");
      exit(64);
    } else {
      printf("\n**File**: %s\n\n", argv[1]);
      printf("Author\n======\n");
      for(i = pos+1; buffer[i] != '\n'; i++) {
        printf("%c", buffer[i]);
      }
      printf("\n\n");
    }
  }else {
    fprintf(stderr, "Usage: clox [path][author]\n");
    exit(64);
  }

  freeVM(&vm);

  return 0;
}
