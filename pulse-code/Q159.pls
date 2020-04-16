var n=123456
var numofdigits=4
var rem
var count=0
var num
var t=n
while(n!=0):
	rem=n%10
	count=count+1
	n=n//10
num=t//(10^(count-numofdigits))
print("the given number is:")
print(t)
print("the number of digits required:")
print(numofdigits)
print("the final output is:")
print(num)
