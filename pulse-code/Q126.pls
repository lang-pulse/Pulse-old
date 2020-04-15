var num
var count=1
var rem
var sum
while(count <= 500):
	num = count
	sum = 0
	while( num!=0):
		rem = num %10
		sum=sum +(rem*rem*rem)
		num=num//10
	if(count==sum):
		print(count)
	count=count+1
