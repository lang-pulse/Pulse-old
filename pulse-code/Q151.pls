var angle=45
var adj
var hypo
var cos
if(angle==30):
	adj=3^(1/2)
	hypo=2
	cos=adj/hypo
	print("the angle is:")
	print(angle)
	print("the hypotenuse is:")
	print(hypo)
	print("the side adjacent to the angle is:")
	print(adj)
	print("the cosine of the angle is:")
	print(cos)
else:
	if(angle==45):
		adj=1
		hypo=2^(1/2)
		cos=adj/hypo
		print("the angle is:")
		print(angle)
		print("the hypotenuse is:")
		print(hypo)
		print("the side adjacent to the angle is:")
		print(adj)
		print("the cosine of the angle is:")
		print(cos)
	else:
		if(angle==60):
			adj=1
			hypo=2
			cos=adj/hypo
			print("the angle is:")
			print(angle)
			print("the hypotenuse is:")
			print(hypo)
			print("the side adjacent to the angle is:")
			print(adj)
			print("the cosine of the angle is:")
			print(cos)
		else:
			if(angle==0):
				print("the adjacent side and the hypotenuse are equal, the cosine of the angle")
				print("1")
			else:
				if(angle==90):
					print("the cosine of the angle is:")
					print("0")
				else:
					print("not a valid angle")
