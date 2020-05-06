~Pranshul
var rows = 5
var out = 1
var in = 0
while(out<=rows):
	in = 2*rows
	while(in>=2*out-1):
		print(" ","")
		in = in-1
	in = 0
	while(in<2*out-1):
		print("*"," ")
		in = in+1
	print(" ")
	out=out+1
