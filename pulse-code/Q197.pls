~Barath
var a="Pulse"
var b="Language"
var res=""
var c
var d
var count1=0
var count2=0
var i=0
while((a%i)!="~"):
	c=a%i
	count1=count1+1
	i=i+1
i=0
while((b%i)!="~"):
	c=b%i
	count2=count2+1
	i=i+1
i=0
while(i<count1 or i<count2):
	if(i<count1):
		c=a%i
		res=res+c
	if(i<count2):
		d=b%i
		res=res+d
	i=i+1
print("string 1 is:")
print(a)
print("string 2 is:")
print(b)
print("alternate string concatenation:")
print(res)
