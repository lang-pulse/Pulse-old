~Pranshul
var x1 = 10
var y1 = 10
var x2 = 5
var y2 = 15
var distance = x1-x2
if(distance<0):
	distance = distance *(-1)
var t = y1-y2
if(t<0):
	t = -1*t
distance = distance+t
print(distance)
