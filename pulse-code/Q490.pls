~Vedant
var n=18
var a=1
var i=1
var c=1
while (i<=n):
	if(n%i==0):
		c=c+1
	i=i+1
	if(c==3):
		a=a+1
var d
d=c/n
print("The probability is ",d)
