~Barath
var string="ab"
var pattern="?*"
var alpha
var pat
var index=0
var index_pat=0
while((string%index)!="~"):
	index=index+1
while((pattern%index_pat)!="~"):
	index_pat=index_pat+1
print("The string is: ",string)
print("")
print("The pattern is: ",pattern)
print("")
if(index==index_pat):
	print("Yes")
else:
	print("No")
