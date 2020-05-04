var outer = 0
var inner = 0
var prev = 0
var next = 1
var temp
while(outer<5):
	inner = 0
	while(inner<=outer):
		inner = inner +1
		print(prev," ")
		temp = prev
		prev = next
		next = next + temp
	print(" ")
	outer = outer + 1
