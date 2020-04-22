~Harishankar
var n=123
var rev=0
var dig=0
var t=n
while(n>0):
	dig=n%10
	rev=dig+(rev*10)
	n=n//10
if(rev==t):
	print("Yes Plaindrome!")
else:
	print("Not Palindrome!")
