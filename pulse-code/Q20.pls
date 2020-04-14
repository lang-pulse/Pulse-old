var binary=0
var rem
var i=1
var n=19
while(n!=0):
	rem=n%2
	n=n//2
	binary=binary+(rem*i)
	i=i*10
print(binary)
