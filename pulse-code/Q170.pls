~Barath
var class_held=43
var class_att=36
var att_per
att_per=(class_att/class_held)*100
print("the number of classes held:")
print(class_held)
print("the number of classes the student has attended:")
print(class_att)
print("the attendance percentage is:")
print(att_per)
if(att_per<75):
	print("the student is not allowed to sit for his/her final exams")
else:
	print("the student is allowed to sit for his/her final exams")
