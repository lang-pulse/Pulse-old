~Barath
var a="umbrella"
var b
var i=0
var c=0
while((a%i)!="~"):
	b=a%i
	if(b=="e"):
		c=c+1
	i=i+1
print("the string is:")
print(a)
print("is the letter e present in the string?")
if(c==1):
	print("yes, the letter e is in the string")
else:
	print("no, the letter e is not in the string")
