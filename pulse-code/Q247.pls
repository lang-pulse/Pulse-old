~Barath
var side1=3
var side2=12
var side3=8
var sum1
var sum2
var sum3
sum1=side1+side2
sum2=side2+side3
sum3=side1+side3
print("Side A: ",side1)
print(" cm")
print("Side B: ",side2)
print(" cm")
print("Side C: ",side3)
print(" cm")
if(sum1>side3 and sum2>side1 and sum3>side2):
	print("Yes, the given sides form a triangle")
else:
	print("No, the given sides don't form a triangle"," ")
	if(sum1<=side3):
		print("because ",side1)
		print(" + ",side2)
		if(sum1==side3):
			print(" is = ",side3)
		else:
			print(" is < ",side3)
		print("")
	if(sum2<=side1):
		print("because ",side2)
		print(" + ",side3)
		if(sum2==side1):
			print(" is = ",side1)
		else:
			print(" is < ",side1)
		print("")
	if(sum3<=side2):
		print("because ",side1)
		print(" + ",side3)
		if(sum3==side2):
			print(" is = ",side2)
		else:
			print(" is < ",side2)
		print("")
