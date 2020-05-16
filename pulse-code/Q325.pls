~Barath
var num_cards=5
var num_queen=1
var num_ace=1
var prob_ace
var prob_queen
var prob_queen2
var rem_queen
var rem_cards
prob_queen=num_queen/num_cards
rem_cards=num_cards-1
prob_ace=num_ace/rem_cards
rem_queen=num_queen-1
prob_queen2=rem_queen/rem_cards
print("The total number of cards is: ",num_cards)
print("")
print("The number of queen cards is: ",num_queen)
print("")
print("The probability of the queen card being picked up is: ",prob_queen)
print("")
print("The remaining number of cards is: ",rem_cards)
print("")
print("The number of ace cards is: ",num_ace)
print("")
print("The probability that the ace card is picked up is: ",prob_ace)
print("")
print("The probability of the queen card being picked up again is: ",prob_queen2)
