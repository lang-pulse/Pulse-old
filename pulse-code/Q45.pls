var n=12
var i=2
var j
var composite
while(i<=n):
	composite=0
	j=i-1
	while(j>1):
		if(i%j ==0):
			composite=1
		j=j-1
	if(composite ==1):
		print(i)
	i=i+1
