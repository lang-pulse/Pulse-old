~Pranav
var smith_input = 4
var s_digit = 0
var k_sum = 0
var c_smith = smith_input
var i_smith = 2
var p_smith = 0
while(c_smith > 0):
	s_digit = c_smith % 10
	k_sum = k_sum + s_digit
	c_smith = c_smith / 10
while(smith_input > 1):
	if(smith_input % i_smith == 0):
		p_smith = p_smith + i_smith
		smith_input = smith_input / i_smith
	else:
		i_smith = i_smith + 1
if(p_smith == k_sum):
	print("Smith number")
else:
	print("Not a Smith number")
