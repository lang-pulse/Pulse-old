var n=123
var rem
var t
var sum=0
var i=1
var fact=1
t=n
while(t!=0):
	rem=t%10
	while(i<=rem):
		fact=fact*i
		sum=sum+fact
		i=i+1
	t=t/10
print("the sum of the factorials of the given number is: ")
print(sum)
