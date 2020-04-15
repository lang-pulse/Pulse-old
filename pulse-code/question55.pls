var a=13
var b=10
var i=1
var hcf
while(i<=a):
	if(a%i==0 and b%i==0):
		hcf=i
	i=i+1
if(hcf==1):
	print("the numbers are co-prime")
else:
	print("the numbers are not co-prime")
