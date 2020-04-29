~Barath
var org_str="I AM GROOT"
var i=0
var b
var d
var count
var rev_str=""
while((org_str%i)!="~"):
	b=org_str%i
	i=i+1
count=i-1
while(count>=0):
	d=org_str%count
	rev_str=rev_str+d
	count=count-1
print("the original string is: ",org_str)
print("")
print("the reversed string is: ",rev_str)
print("")
