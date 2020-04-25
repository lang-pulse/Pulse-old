~Shubham
var hexadecimalval = 0
var i = 1
var remainder
var binaryval = 10000
while(binaryval != 0):
	binaryval = binaryval / 10
	remainder = binaryval % 10
	i = i * 2
	hexadecimalval = hexadecimalval + remainder * i
print(hexadecimalval)
