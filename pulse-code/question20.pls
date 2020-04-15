var rem
var temp=1
var num=234
var bnum
while(num!=0):
	rem=(num%2)
	num=(num/2)
	bnum=(bnum+rem*temp)
	temp=temp*10
print("the binary equivalent of the given number is: ")
print(bnum)
