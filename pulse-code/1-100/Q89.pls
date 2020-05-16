~Barath
var n=47146185
var count=0
while(n!=0):
	n=n//10
	count=count+1
if(count<12):
	print("your aadhar number is invalid")
	print("Number of digits in ur aadhar number: ")
	print(count)
else:
	print("your aadhar number is valid")
	print("Number of digits in your aadhar number: ")
	print(count)
