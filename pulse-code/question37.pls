var n
var i=1
var k
var r
var ary[50]
var p=0
while (i<=r):
	k=0
	n=1
	while (n<=i):
		if(i%n==0):
			k=k+1
			n=n+1
		if(k==2):
			ary[p]=i
			p=p+1
			i=i+1
while (n==0):
	n<p
	n=n+1
if(ary[n+1]-ary[n]==2):
	print("twin primes")
else:
	print("not twin primes")
