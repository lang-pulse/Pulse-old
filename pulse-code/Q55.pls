~Pranshul
var a = 25
var b = 5
var i = 2
var flag = 0
while(i<(a/2) and flag!=1):
	if(a%i == 0 ):
		if(b%i == 0):
			flag = 1
	i = i+1
if(flag == 0 and a%b!=0 and b%a!=0):
	print("Yes")
else:
	print("No")
