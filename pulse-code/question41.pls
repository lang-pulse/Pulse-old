var i
var onum=200
var num=145
var ldig
var sum
var fact
onum = num
sum=0
while(num>0):
	ldig = num % 10
	fact=1
	while(i<=ldig):
		i=1
		i=i+1
		fact = fact*i
	sum = sum + fact
	num = num/10
if(sum==onum):
	print(onum)
else:
	print(onum)
