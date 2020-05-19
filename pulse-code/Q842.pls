~Pranshul
var R842 = 3000
var g842 = 9.8
#Using the formula, R = u^2 * sin(2*Theta)
var u842 = (R842*g842/(3^0.5/2))^0.5
#Max range is achieved when angle = 45deg
var Rmax842 = u842^2/g842
if(Rmax842>=5000):
	print("Yes, a target 5km away can be hit")
else:
	print("No, a target 5km away cannot be hit")
