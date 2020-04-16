var angle=60
var hypo
var opp
var cosec
var sin
if(angle==30):
	hypo=2
	opp=1
	cosec=hypo/opp
	print("the angle is:")
	print(angle)
	print("the hypotenuse is:")
	print(hypo)
	print("the opposite side is:")
	print(opp)
	print("the cosecant of the angle is:")
	print(cosec)
else:
	if(angle==45):
		hypo=2^(1/2)
		opp=1
		cosec=hypo/opp
		print("the angle is:")
		print(angle)
		print("the hypotenuse is:")
		print(hypo)
		print("the opposite side is:")
		print(opp)
		print("the cosecant of the angle is:")
		print(cosec)
	else:
		if(angle==60):
			hypo=2
			opp=3^(1/2)
			cosec=hypo/opp
			print("the angle is:")
			print(angle)
			print("the hypotenuse is:")
			print(hypo)
			print("the opposite side is:")
			print(opp)
			print("the cosecant of the angle is:")
			print(cosec)
		else:
			if(angle==90):
				hypo=1
				opp=hypo
				cosec=hypo/opp
				print("the angle is:")
				print(angle)
				print("the hypotenuse is:")
				print(hypo)
				print("the opposite side is:")
				print(opp)
				print("the cosecant of the angle is:")
				print(cosec)
			else:
				if(angle==0):
					sin=0
					cosec=1/sin
					print("the angle is:")
					print(angle)
					print("the cosecant of the angle is:")
					print(cosec)
					print("this is because the value of sin0 is 0")
