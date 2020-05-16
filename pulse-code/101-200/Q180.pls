~Barath
var name=" Medayil Barath Chandra"
var letter
var letter2
var pos
var i=0
print("The name of the person is: ",name)
print("")
print("The name of the person with abbrevations is: ","")
while((name%i)!="~"):
	letter=name%i
	if(letter==" "):
		pos=i+1
		letter2=name%(pos)
		print(letter2,"")
	i=i+1
pos=pos+1
letter=""
while((name%pos)!="~"):
	letter=name%pos
	print(letter,"")
	pos=pos+1
