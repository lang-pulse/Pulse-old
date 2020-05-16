~Barath
var n=775
var rem
var c=0
var sum=0
var pow
var num
var rev=0
var temp=n
var temp1=n
var temp2
while(n!=0):
	rem=n%10
	c=c+1
	n=n//10
temp2=c
while(temp!=0):
	rem=temp%16
	pow=10^(c-1)
	num=rem*pow
	sum=sum+num
	c=c-1
	temp=temp/16
while(sum!=0):
	rem=sum%10
	pow=10^(temp2-1)
	num=rem*pow
	rev=rev+num
	temp2=temp2-1
	sum=sum//10
print("the decimal number is:")
print(temp1)
print("the equivalent hexadecimal number is:")
print(rev)
