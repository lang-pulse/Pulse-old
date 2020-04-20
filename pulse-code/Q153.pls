~Barath
var angle=45
var hypo
var adj
var sec
var cos
if(angle==30):
	hypo=2
	adj=3^(1/2)
	sec=hypo/adj
	print("the angle is:")
	print(angle)
	print("the hypotenuse is:")
	print(hypo)
	print("the adjacent side is:")
	print(adj)
	print("the secant of the angle is:")
	print(sec)
else:
	if(angle==45):
		hypo=2^(1/2)
		adj=1
		sec=hypo/adj
		print("the angle is:")
		print(angle)
		print("the hypotenuse is:")
		print(hypo)
		print("the adjacent side is:")
		print(adj)
		print("the secant of the angle is:")
		print(sec)
	else:
		if(angle==60):
			hypo=2
			adj=1
			sec=hypo/adj
			print("the angle is:")
			print(angle)
			print("the hypotenuse is:")
			print(hypo)
			print("the adjacent side is:")
			print(adj)
			print("the secant of the angle is:")
			print(sec)
		else:
			if(angle==90):
				cos=0
				sec=1/cos
				print("the angle is:")
				print(angle)
				print("the secant of the angle is:")
				print(sec)
				print("this is because the value of cos90 is 0")
			else:
				if(angle==0):
					adj=1
					hypo=adj
					sec=hypo/adj
					print("the angle is:")
					print(angle)
					print("the hypotenuse and the adjacent side become one line so their lengths are equal")
					print("therefore the secant of the angle is:")
					print(sec)
