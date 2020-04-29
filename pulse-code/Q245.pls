~Barath
var num=21
var i
var j
var sum
var count=0
var x
var y
i=1
while(i<num):
	j=1
	while(j<num):
		sum=(i^2)+(j^2)
		if(sum==num):
			count=count+1
			x=i
			y=j
		j=j+1
	i=i+1
if(count>0):
	print("The number ",num)
	print(" can be represented as: ",x)
	print("^2 + ",y)
	print("^2")
else:
	print("The number ",num)
	print(" cannot be represented as the sum of the square of any number")
