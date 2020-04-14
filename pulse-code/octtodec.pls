var oct=116
var dec=0
var i=0
while(oct!=0):
	dec=dec+(oct%10)*(8^i)
	i=i+1
	oct=oct/10
print("the decimal equivalent of the octal number is: ")
print(dec)
