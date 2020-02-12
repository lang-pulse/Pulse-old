clean:
	@make pulse
	@rm pulse

pulse: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -o pulse src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@./pulse
