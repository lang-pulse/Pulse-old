~Pranshul
var PA = 0.22
var PB = 0.26
var A_when_B = 0.26
var product = PA*PB
var A_intersection_B = A_when_B*PA
if(product == A_intersection_B):
	print("A and B are independent")
else:
	print("A and B are dependent")
