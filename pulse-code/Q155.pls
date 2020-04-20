~Barath
var angle=60
var opp
var adj
var cot
var sin
var cos
if(angle==30):
	adj=3^(1/2)
	opp=1
	cot=adj/opp
	print("the angle is:")
	print(angle)
	print("the adjacent side is:")
	print(adj)
	print("the opposite side is:")
	print(opp)
	print("the cotangent of the angle is:")
	print(cot)
else:
	if(angle==45):
		adj=1
		opp=1
		cot=adj/opp
		print("the angle is:")
		print(angle)
		print("the adjacent side is:")
		print(adj)
		print("the opposite side is:")
		print(opp)
		print("the cotangent of the angle is:")
		print(cot)
	else:
		if(angle==60):
			adj=1
			opp=3^(1/2)
			cot=adj/opp
			print("the angle is:")
			print(angle)
			print("the adjacent side is:")
			print(adj)
			print("the opposite side is:")
			print(opp)
			print("the cotangent of the angle is:")
			print(cot)
		else:
			if(angle==90):
				cos=0
				sin=1
				cot=cos/sin
				print("the angle is:")
				print(angle)
				print("the cotangent of the angle is:")
				print(cot)
			else:
				if(angle==0):
					cos=1
					sin=0
					cot=cos/sin
					print("the angle is:")
					print(angle)
					print("the cotangent of the angle is:")
					print(cot)
					print("this is because the value of sin0 is 0")
				else:
					print("it is not a valid angle")
