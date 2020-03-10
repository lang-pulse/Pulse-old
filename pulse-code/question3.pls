var n=25
var i=2
var count=0
while (i<=(n/2)):
	if(n%i==0):
		count=1
	i=i+1
if(count==0):
	print("the number is prime")
else:
	print("the number is not prime")
