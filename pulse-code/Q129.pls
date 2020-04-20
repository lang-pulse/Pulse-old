~Kaustuv
var year = 1998
var year1 = 2056
if(year % 4 == 0):
	if(year % 100 == 0):
		if(year % 400 == 0):
			print("is leap year")
		else:
			print("isnt leap year")
	else:
		print("is leap year")
else:
	print("isnt leap year")
if(year1 % 4 == 0):
	if(year1 % 100 == 0):
		if(year1 % 400 == 0):
			print("is leap year")
		else:
			print("isnt a leap year")
	else:
		print("is leap year")
else:
	print("isnt leap year")
