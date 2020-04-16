var angle=90
var opp
var adj
var tan
var sin
var cos
var hypo
if(angle==30):
	opp=1
	adj=3^(1/2)
	tan=opp/adj
	print("the angle is:")
	print(angle)
	print("the side opposite to the angle is:")
	print(opp)
	print("the side adjacent to the angle is:")
	print(adj)
	print("the tangent of the angle is:")
	print(tan)
else:
	if(angle==45):
		opp=1
		adj=1
		tan=opp/adj
		print("the angle is:")
		print(angle)
		print("the side opposite to the angle is:")
		print(opp)
		print("the side adjacent to the angle is:")
		print(adj)
		print("the tangent of the angle is:")
		print(tan)
	else:
		if(angle==60):
			opp=3^(1/2)
			adj=1
			tan=opp/adj
			print("the angle is:")
			print(angle)
			print("the side opposite to the angle is:")
			print(opp)
			print("the side adjacent to the angle is:")
			print(adj)
			print("the tangent of the angle is:")
			print(tan)
		else:
			if(angle==90):
				sin=1
				cos=0
				tan=sin/cos
				print("the angle is:")
				print(angle)
				print("the tangent of the angle is:")
				print(tan)
				print("this is because the value of cos is 0")
			else:
				if(angle==0):
					opp=0
					adj=1
					tan=opp/adj
					print("the angle is:")
					print(angle)
					print("the side opposite to the angle is:")
					print(opp)
					print("the side adjacent to the angle is:")
					print(adj)
					print("the tangent of the angle is:")
					print(tan)
				else:
					print("not a valid angle")
