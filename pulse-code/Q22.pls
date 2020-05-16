~Harishankar
var n = 703531
var max = 0
var min = 9
var i = 0
var j = 0
var r = 0
while(n>0):
	r = (n%10)
	if(r>max):
		max = r
	if(r<min):
		min = r
	n= (n/10)
print("Max digit -")
print(max)
print("Min digit -")
print(min)
