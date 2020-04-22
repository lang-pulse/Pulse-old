~Barath
var n=145
var rem
var fact
var sum=0
var store
store=n
while(n>0):
	fact=1
	rem=n%10
	while(rem!=0):
		fact=fact*rem
		rem=rem-1
	sum=sum+fact
	n=n//10
print("the given number is: ")
print(store)
print("the sum of factorial of the digits of the given number is: ")
print(sum)
if(sum==store):
	print("hence, it is a special number")
else:
	print("hence, it is not a special number")
