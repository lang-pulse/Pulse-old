~Harishankar
var n=23
var i=2
var j
var prime
while(i<=n):
	prime=1
	j=i-1
	while(j>1):
		if(i%j ==0):
			prime=0
		j=j-1
	if(prime==1):
		print(i)
	i=i+1
