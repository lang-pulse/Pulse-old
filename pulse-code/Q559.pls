~KAUSTUV
var num_cards=52
var num_req=5
var fac_cards1=1
var num_straight=10
var num_suit=4^num_req
var diff_cards=num_cards-num_req
while(num_cards!=0):
	fac_cards1=fac_cards1*num_cards
	num_cards=num_cards-1
var fac_cards2=1
while(num_req!=0):
	fac_cards2=fac_cards2*num_req
	num_req=num_req-1
var fac_cards3=1
while(diff_cards!=0):
	fac_cards3=fac_cards3*diff_cards
	diff_cards=diff_cards-1
var total_prob=fac_cards1/(fac_cards2*fac_cards3)
var num_fav_outcomes=10*num_suit
var prob_straight=num_fav_outcomes/total_prob
print(prob_straight)
