clean:
	@make pulse
	@rm pulse

pulse: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c test.c
	@gcc -o pulse src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c test.c
	@./pulse
