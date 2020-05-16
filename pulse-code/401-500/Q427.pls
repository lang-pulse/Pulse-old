~KAUSTUV
var number_orange = 600
var number_banana = 400
var orange_damaged = 15/100
var banana_damaged = 8/100
var total_fruits = number_orange+number_banana
var number_of_rotten_orange = number_orange*orange_damaged
var number_of_rotten_banana = number_banana*banana_damaged
var total_number_rotten_fruits = number_of_rotten_orange+number_of_rotten_banana
var fruits_good_cond = total_fruits-total_number_rotten_fruits
var prec = fruits_good_cond/total_fruits*100
print(prec)
