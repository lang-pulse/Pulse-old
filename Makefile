clean:
	@make pulse
	@rm pulse

clean_file:
	@make pulse_file
	@rm pulse_file

pulse: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -o pulse src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@./pulse

pulse_file: src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@gcc -o pulse_file src/iota.c src/memory.c src/debug.c src/value.c src/vm.c src/scanner.c src/compiler.c src/object.c src/table.c test.c
	@./pulse_file test/odd-even.pul
