var num=6
var i=1	
var j
var count
while(i<=num):
	count=0
	if(num%i==0):
		j=1
		while(j<=1):
			if(i%j==0):
				count=count+1
				j=j+1
				if(count==2):
					print(i)
	i=i+1
