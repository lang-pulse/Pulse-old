~Pranav
var a = 4
var s = 0
var k = 0
var d = a
var i = 2
var p = 0
var t = a
while(d > 0):
	s = d % 10
	k = k + s
	d= d / 10
while(a > 1):
	if(a % i == 0):
		p = p + i
		a = a / i
	else:
		i = i + 1
if(p == k):
	print("Smith number")
else:
	print("Not a Smith number")
