clean:
	@make pulse
	@rm pulse

pulse: src/iota.c src/memory.c src/debug.c src/value.c test.c
	@gcc -o pulse src/iota.c src/memory.c src/debug.c src/value.c test.c
	@./pulse
