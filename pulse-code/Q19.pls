var n = 1110
var dec = 0
var i = 0
var r = 0
var j = 0
var pow = 1
while(n!=0):
	while(j<i):
		pow = pow * 2
		j = j +1
	r = (n%10)
	dec = dec + r * pow
	n = (n/10)
	i = i + 1
print(dec)
