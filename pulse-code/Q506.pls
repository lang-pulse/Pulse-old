~Barath
var num_cards=52
var num_cardss=num_cards
var num_cards_taken=9
var num_cards_takens=num_cards_taken
var fac=1
var fact=1
var facto=1
var diff1=num_cards-num_cards_taken
while(num_cards>0):
	fac=fac*num_cards
	num_cards=num_cards-1
while(num_cards_taken>0):
	fact=fact*num_cards_taken
	num_cards_taken=num_cards_taken-1
while(diff1>0):
	facto=facto*diff1
	diff1=diff1-1
var total_outcomes
total_outcomes=fac/(fact*facto)
var num_jacks=4
var num_jackss=num_jacks
var jacks_taken=2
var jacks_takens=jacks_taken
var diff2=num_jacks-jacks_taken
fac=1
fact=1
facto=1
while(num_jacks>0):
	fac=fac*num_jacks
	num_jacks=num_jacks-1
while(jacks_taken>0):
	fact=fact*jacks_taken
	jacks_taken=jacks_taken-1
while(diff2>0):
	facto=facto*diff2
	diff2=diff2-1
var jacks_prob=fac/(fact*facto)
var cards_wo_jack=num_cardss-num_jackss
var cards_wo_jacks=cards_wo_jack
var rem_cards=num_cards_takens-jacks_takens
var rem_cardss=rem_cards
fac=1
fact=1
facto=1
var diff3=cards_wo_jack-rem_cards
while(cards_wo_jack>0):
	fac=fac*cards_wo_jack
	cards_wo_jack=cards_wo_jack-1
while(rem_cards>0):
	fact=fact*rem_cards
	rem_cards=rem_cards-1
while(diff3>0):
	facto=facto*diff3
	diff3=diff3-1
var rem_card_prob=fac/(fact*facto)
var probability
probability=(jacks_prob*rem_card_prob)/total_outcomes
print("The total number of cards: ",num_cardss)
print("")
print("The number of cards taken: ",num_cards_takens)
print("")
print("Therefore, the total number of outcomes is: ",total_outcomes)
print("")
print("The number of jack cards in the deck: ",num_jackss)
print("")
print("The number of jack cards taken: ",jacks_takens)
print("")
print("Therefore, the probability of choosing ",jacks_takens)
print(" out of ",num_jackss)
print(" jacks is: ",jacks_prob)
print("")
print("The remaining number of cards: ",cards_wo_jacks)
print("")
print("The remaining number of cards in taken deck: ",rem_cardss)
print("")
print("Therefore, the probability of choosing ",rem_cardss)
print(" out of ",cards_wo_jacks)
print(" cards is :",rem_card_prob)
print("")
print("Therefore, the probability that the taken deck contains 2 jacks is: ",probability)
print("")
