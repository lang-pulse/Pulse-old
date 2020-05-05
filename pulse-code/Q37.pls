~Pranav
var a_twin = 5
var b_twin = 7
var i_twin = 2
var k_twin = 0
var d_twin = 0
while(i_twin <= b_twin):
	if(a_twin % i_twin == 0):
		k_twin = k_twin + 1
	if(b_twin % i_twin == 0):
		d_twin = d_twin + 1
	i_twin = i_twin + 1
var f_twin = b_twin - a_twin
if(k_twin > 0):
	if(d_twin > 0):
		if(f_twin == 2):
			print("Twin Prime")
		else:
			print("Not Twin Prime")
