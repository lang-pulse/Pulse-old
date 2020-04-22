~Barath
var n=836502345
var count=0
while(n!=0):
	n=n//10
	count=count+1
if(count<10):
	print("your phone number is not valid")
	print("Number of digits in ur phone number: ")
	print(count)
else:
	print("your phone number is valid")
	print("Number of digits in your phone number: ")
	print(count)
