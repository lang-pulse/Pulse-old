var n=45
var rev=0
var dig=0
while(n>0):
	dig=n%10
	rev=dig+(rev*10)
	n=n//10
print(rev)
