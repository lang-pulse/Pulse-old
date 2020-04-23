~Barath
var a="12345a"
var b
var i=0
var cd=0
var ca=0
while((a%i)!="~"):
	b=a%i
	if(b=="0" or b=="1" or b=="2" or b=="3" or b=="4" or b=="5" or b=="6" or b=="7" or b=="8" or b=="9"):
		cd=cd+1
	else:
		ca=ca+1
	i=i+1
print("the string is:")
print(a)
print("does the string only consist of digits?")
if(ca>0):
	print("no, the string also has other characters")
else:
	print("yes, the string only consists of digits")
