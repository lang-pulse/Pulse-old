clean:
	@make pulse
	@rm pulse

pulse: iota.c memory.c main.c debug.c value.c
	@gcc -o pulse iota.c memory.c main.c debug.c value.c
	@./pulse