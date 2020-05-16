~Barath
var card_combo=input("Enter the number of cards required for the combination: ","i")
var num_ace=4
var num_ace_req=1
var ace_store=num_ace_req
var diff_ace=num_ace-num_ace_req
var rem_combo=card_combo-num_ace_req
var cards_rem=52-num_ace
var diff_combo=cards_rem-rem_combo
var num_comb=1
var factorial_ace1=1
while(num_ace!=0):
	factorial_ace1=factorial_ace1*num_ace
	num_ace=num_ace-1
var factorial_ace2=1
while(num_ace_req!=0):
	factorial_ace2=factorial_ace2*num_ace_req
	num_ace_req=num_ace_req-1
var factorial_ace3=1
while(diff_ace!=0):
	factorial_ace3=factorial_ace3*diff_ace
	diff_ace=diff_ace-1
var ace_amt=factorial_ace1/(factorial_ace2*factorial_ace3)
var fac_combo1=1
while(cards_rem!=0):
	fac_combo1=fac_combo1*cards_rem
	cards_rem=cards_rem-1
var fac_combo2=1
while(rem_combo!=0):
	fac_combo2=fac_combo2*rem_combo
	rem_combo=rem_combo-1
var fac_combo3=1
while(diff_combo!=0):
	fac_combo3=fac_combo3*diff_combo
	diff_combo=diff_combo-1
var rem_amt=fac_combo1/(fac_combo2*fac_combo3)
var num_pos_combo=rem_amt*ace_amt
print("")
print("The number of aces required in the combination: ",ace_store)
print("")
print("The number of of cards to form the combination: ",card_combo)
print("")
print("")
print("Therefore, the number of ",card_combo)
print(" card combinations out of a deck of cards is: ",num_pos_combo)
print("")
