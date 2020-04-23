var n=123
var rem
var prod=1
while(n!=0):
	rem=n%10
	prod=prod*rem
	n=n//10
print("the product of the digits of the given number: ")
print(prod)
