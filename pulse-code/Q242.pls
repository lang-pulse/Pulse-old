~Siddhartha
var num = 123456789
var copy = num
var sum
var rem
while(num != 0):
	sum = 0
	while(copy != 0):
		rem = copy % 10
		sum = sum + rem
		copy = copy // 10
	num = sum//10
	copy = sum
print(sum)
