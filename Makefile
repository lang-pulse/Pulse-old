exec:
	@make pulse_exec

clean:
	@make pulse
	@rm pulse

clean_file:
	@make pulse_file
	@rm pulse_file

pulse_exec: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -std=c99 -lm -o pulse src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c

pulse: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -o pulse src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@./pulse

pulse_file: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -o pulse_file src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@./pulse_file test/c-to-f.pls
