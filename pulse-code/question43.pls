var n=94 
var s=0
var sumDig=26
while(n>0):
	s=(s+n%10)
	n=(n/10)
var i=2
var sum=0
while(n>1):
	if(n%i==0):
		sum=sum+sumDig
		n=(n/i)
	else:
		i=i+1
print("it is a smith number")
