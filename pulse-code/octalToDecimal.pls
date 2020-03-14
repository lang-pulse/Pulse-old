var n=37
var dec=0
var i=0
var r=0
var pow=1
while(n!=0):
	r=n%10
	pow=8^i
	i=i+1
	dec=dec+(r*pow)
	n=n//10
print(dec)
