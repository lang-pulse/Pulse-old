~Barath
var n=1729
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
		sum=(i^3)+(j^3)
		if(sum==n):
			count=count+1
			temp=i
			tempp=j
		j=j+1
	i=i+1
print("the number is:")
print(n)
if(count>0):
	print("the number is a valid taxi cab number")
	print("the numbers that form this number is:")
	print(temp)
	print(tempp)
else:
	print("the given number is not a valid taxi cab number")
