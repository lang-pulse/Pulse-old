~Shubham
var num = 121
var rev = 0
var dig = 0
var temp = num
while(num != 0):
	dig = num%10
	rev = rev*10+dig
	num = num//10
if(temp == rev):
	print("Number is a palindrome")
else:
	print("Number is not a palindrome")
