var n=17
var i
var j
var sum
var count=0
var temp
var tempp
i=1
while(i<n):
	j=1
	while(j<n):
		sum=(i^2)+(j^2)
		if(sum==n):
			count=count+1
			temp=i
			tempp=j
		j=j+1
	i=i+1
if(count>0):
	print("the given number can be represented as the sum of two whole sqaures")
	print("the numbers that give the given number upon adding their squares is")
	print(temp)
	print(tempp)
else:
	print("the given number cannot be represented as the sum of two whole numbers")
