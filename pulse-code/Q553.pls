~KAUSTUV
var prob_a = 0.27
var prob_b = 0.27
var prob_b_of_a = 0.21
var prob_a_cross_b = prob_a*prob_b
var prob_a_inter_b = prob_b_of_a*prob_a
if(prob_a_cross_b = prob_a_inter_b):
	print("two events are dependent")
else:
	print("two events are independent")
