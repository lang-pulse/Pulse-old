~Barath
var age=34
var sex="M"
var mar="Y"
if(age>20 and age<60):
	print("AGE:")
	print(age)
	print("GENDER:")
	if(sex=="M"):
		print("Male")
	else:
		print("Female")
	print("MARITAL STATUS:")
	if(mar=="Y"):
		print("Married")
	else:
		print("Unmarried")
	print("PLACE OF SERVICE:")
	if(sex=="F"):
		print("Urban Areas")
	else:
		if(age>20 and age<40):
			print("Anywhere")
		else:
			if(age>40 and age<60):
				print("Urban Areas")
else:
	print("ERROR")
