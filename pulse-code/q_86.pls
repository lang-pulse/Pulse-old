var n=20
var f1=1
var f2=1
var f3=0
var i=3
print(f2)
while(i<=n):
	f3=f2+f1
	if(i%2==0):
		print(f3)
	f1=f2
	f2=f3
	i=i+1
