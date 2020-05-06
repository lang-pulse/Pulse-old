~Pranshul
var counter = 10
var o_loop = 0
var i_loop = 0
while(o_loop<4):
	o_loop = o_loop+1
	i_loop = 3
	while(i_loop>=o_loop-1):
		print(counter," ")
		counter = counter-1
		i_loop = i_loop-1
	print(" ")
