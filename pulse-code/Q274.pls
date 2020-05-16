~Pranshul
var out_loop = 1
var in_loop = 0
var num = 1
var flag = 0
while(out_loop<=5):
	num = 1
	in_loop = 0
	flag = 0
	while(in_loop<2*out_loop-1):
		in_loop = in_loop +1
		print(num," ")
		if(num>=out_loop):
			flag =1
		if(flag==1):
			num = num-1
		else:
			num = num+1
	print(" ")
	out_loop = out_loop+1
