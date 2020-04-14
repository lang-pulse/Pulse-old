var n =123
var dig=0
var fac=1
var sum=0
while(n>0):
	dig= n%10
	fac=1
	while(dig>0):
		fac=fac*dig
		dig=dig-1
	sum=sum+fac
	n=n//10
print(sum)
