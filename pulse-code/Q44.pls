~Barath
var n=45
var count=0
var rem
var sum=0
var sq
var pow
var num=n
sq=n^2
while(n!=0):
	rem=n%10
	count=count+1
	n=n//10
pow=10^count
while(sq!=0):
	rem=sq%pow
	sum=sum+rem
	sq=sq//pow
if(sum==num):
	print("the given number is: ")
	print(num)
	print("the sum of the digits of the square of the number is: ")
	print(sum)
	print("therefore, it is a kaprekar number")
else:
	print("the given number is: ")
	print(num)
	print("the sum of the digits of the square of thegiven number is: ")
	print(sum)
	print("therefore, it is not a kaprekar number")
