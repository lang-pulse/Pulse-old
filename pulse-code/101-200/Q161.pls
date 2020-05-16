~Pranshul
var a = "19.21"
var i = 0
var flag = 0
while(( a%i ) != "~"):
	if((a % i) != "."):
		if(flag == 0):
			print(a%i)
	else:
		flag = 1
	i = i+1
