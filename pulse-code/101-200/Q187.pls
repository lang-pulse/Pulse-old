~Barath
var a="jaxa"
var b="ajax"
var c
var d
var e
var f
var ana
var c1
var c2
var i=0
var j=0
var count=0
var count1=0
while((a%i)!="~"):
	c=a%i
	i=i+1
while((b%j)!="~"):
	d=b%j
	j=j+1
c1=i
c2=j
i=0
while(i<c1):
	e=a%i
	j=0
	while(j<c2):
		f=b%j
		if(e==f):
			count=count+1
		else:
			count1=count1+1
		j=j+1
	i=i+1
print("the first string is:")
print(a)
print("the second string is:")
print(b)
print("are both the strings anagrams of each other??")
if(count>c1):
	ana=count1-count
	if(ana==c1):
		print("yes")
	else:
		print("no")
else:
	if(count==c1):
		print("yes")
	else:
		print("no")
