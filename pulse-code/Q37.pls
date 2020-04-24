~Pranav
var a = 5
var b = 7
var i = 2
var k = 0
var d = 0
while(i <= b):
	if(a % i == 0):
		k = k + 1
	if(b % i == 0):
		d = d + 1
	i = i + 1
var f = b - a
if(k > 0):
	if(d > 0):
		if(f == 2):
			print("Twin Prime")
		else:
			print("Not Twin Prime")
