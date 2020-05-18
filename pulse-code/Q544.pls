~KAUSTUV
var num_cards_total=52
var number_spades=13
var number_diamonds=13
var prob_spade_diamond
prob_spade_diamond=(number_spades/num_cards_total)*(number_diamonds)/(num_cards_total-1)*((number_spades-1)/(num_cards_total-2))
print(prob_spade_diamond)
