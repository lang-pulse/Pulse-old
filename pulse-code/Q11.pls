~Pranshul
var out_loop = 0
var in_loop = 0
var n = 5
while(out_loop<=5):
	in_loop = 0
	while(in_loop<=2*(n-out_loop)):
		print(" ","")
		in_loop = in_loop + 1
	in_loop = 1
	while(in_loop<=out_loop):
		print(in_loop," ")
		in_loop=in_loop+1
	in_loop = out_loop-1
	while(in_loop>=1):
		print(in_loop," ")
		in_loop = in_loop-1
	out_loop = out_loop+1
	print(" ")
out_loop = 4
in_loop = 4
while(out_loop>0):
	in_loop = 2
	print(" "," ")
	while(in_loop<=2*(n-out_loop)):
		print(" ","")
		in_loop = in_loop+1
	in_loop = 1
	while(in_loop<=out_loop):
		print(in_loop," ")
		in_loop = in_loop+1
	in_loop = out_loop-1
	while(in_loop>=1):
		print(in_loop," ")
		in_loop = in_loop-1
	out_loop = out_loop-1
	print(" ")
