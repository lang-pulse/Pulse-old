~Soumya
var no_of_packs = 24
print("Total Cans in pack = ",no_of_packs)
print("")
var no_diet_soda = 22
print("Number of Diet Soda in Packs = ",no_diet_soda)
print("")
var no_regular_soda = 2
print("Misplaced regular cans = ",no_regular_soda)
print("")
print("")
print("Using Conditional Probability")
var both_diet_soda_prob = (no_regular_soda/no_of_packs)*((no_regular_soda-1)/(no_of_packs-1))
print("a) P(Both Diet Soda) = ",both_diet_soda_prob)
print("")
var both_regular_soda_prob = (no_diet_soda/no_of_packs)*((no_diet_soda-1)/(no_of_packs-1))
print("b) P(Both Regular Soda) = ",both_regular_soda_prob)
print("")
print("It is not unusual as the probability rate is greater than 50%")
var one_diet_one_regular_prob = 1 - (both_diet_soda_prob + both_regular_soda_prob)
print("c) P(One of each) = ", one_diet_one_regular_prob)
