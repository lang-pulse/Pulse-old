~Siddhartha
var a = "This is orange juice"
var b = "orange"
var pos_orange = -1
var i = 0
var first_char = b % 0
while((a % i) != first_char):
	pos_orange = pos_orange + 1
	i = i + 1
var flag = 0
var mod
var j = 0
while((a % i) != " "):
	mod = b % j
	if((a % i) == mod):
		flag = flag + 1
	j = j + 1
	i = i + 1
if(flag == 6):
	print("The word 'orange' is present in string.")
else:
	print("The word 'orange' is not in string.")
