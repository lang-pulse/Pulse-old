var hypo
var opp
var sin
var angle=30
if(angle==45):
	hypo=2^(1/2)
	opp=1
	sin=opp/hypo
	print("the angle is:")
	print(angle)
	print("the hypotenuse is:")
	print(hypo)
	print("the side oppsite to the angle is:")
	print(opp)
	print("the sine of the given angle is:")
	print(sin)
else:
	if(angle==60):
		hypo=2
		opp=3^(1/2)
		sin=opp/hypo
		print("the angle is:")
		print(angle)
		print("the hypotenuse is:")
		print(hypo)
		print("the side opposite to the angle is:")
		print(opp)
		print("the sine of the given angle is:")
		print(sin)
	else:
		if(angle==30):
			hypo=2
			opp=1
			sin=opp/hypo
			print("the angle is:")
			print(angle)
			print("the hypotenuse is:")
			print(hypo)
			print("the side opposite to the angle is:")
			print(opp)
			print("the sine of the given angle is:")
			print(sin)
		else:
			if(angle==90):
				opp=1
				hypo=opp
				sin=opp/hypo
				print("the angle is:")
				print(angle)
				print("the hypotenuse is:")
				print(hypo)
				print("the side opposite to the angle is:")
				print(opp)
				print("the sine of the given angle is:")
				print(sin)
			else:
				if(angle==0):
					print("the sine of the angle is:")
					print("0")
				else:
					print("not a valid angle")
