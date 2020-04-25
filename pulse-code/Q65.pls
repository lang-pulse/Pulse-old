~Barath
var n=307
var rem
var c=0
var hex
var num=0
var sum=0
var temp=n
var temp1=n
while(n!=0):
	rem=n%10
	c=c+1
	n=n//10
while(temp!=0 and num<c):
	rem=temp%10
	hex=rem*(16^num)
	sum=sum+hex
	num=num+1
	temp=temp//10
print("the hexadecimal number is:")
print(temp1)
print("the equivalent decimal number is:")
print(sum)
