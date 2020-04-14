var n=1234
var even=0
var odd=0
var digit
var rem
while(n!=0):
	digit=n%10
	n=n/10
	rem=digit%2
	if(rem==0):
		even=even+digit
	else:
		odd=odd+digit
print("the sum of the even digits of the given number is: ")
print(even)
print("the sum of the odd digits of the given number is: ")
print(odd)
