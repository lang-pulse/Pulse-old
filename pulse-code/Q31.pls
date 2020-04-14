var yr=1999
var a
var b
var c
a=yr%4
b=yr%100
c=yr%400
if(a==0 and b==0 and c==0):
	print("the given year is a leap year")
else:
	if(a==0 and b!=0):
		print("the given year is a leap year")
	else:
		print("the given year is not a leap year")
