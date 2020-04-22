~Barath
var n=25
var sq
var rem
var end
var count=0
var num=n
sq=n^2
print("the given number is: ")
print(n)
while(n!=0):
	rem=n%10
	count=count+1
	n=n//10
end=sq%(10^count)
if(end==num):
	print("the last digit/digits of the square of the given number: ")
	print(end)
	print("therefore, it is an automorphic number")
else:
	print("the last digit/digits of the square of the given number: ")
	print(end)
	print("therefore, it is not an automorphic number")
