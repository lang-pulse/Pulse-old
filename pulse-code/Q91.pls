var n=123
var prev
var flag
var dig
while(n>0):
	dig=n%10
	n=n//10
	prev=n%10
	if(prev<dig):
		flag=1
	else:
		flag=0
	n=n//10
if(flag==1):
	print("Yes")
else:
	print("No")
