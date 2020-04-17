var class_held=43
var class_att=12
var att_per
var ml="Y"
att_per=(class_att/class_held)*100
print("the number of classes held:")
print(class_held)
print("the number of classes the student has attended:")
print(class_att)
print("the attendance percentage is:")
print(att_per)
if(att_per<75):
	print("does the student have a medical reason?")
	if(ml=="Y"):
		print("yes")
	else:
		print("no")
	if(ml=="Y"):
		print("the student can sit for his/her exam")
	else:
		print("the student cannot sit for his/her exam")
else:
	print("the student can sit for his/her exam")
