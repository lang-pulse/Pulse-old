~Soumya
var n_die_thrown = 2
print("The number of time the die is thrown = ", n_die_thrown)
print("")
var t_outcomes = 36
print("Total outcomes = ", t_outcomes)
print("")
var t_5 = 11
print("Total outcomes with 5 = ", t_5)
print("")
var t_not5 = t_outcomes - t_5
print("Total outcomes without 5 = ", t_not5)
print("")
var question_i = t_not5/t_outcomes
print("The probability that 5 will not come up either time = ", question_i)
print("")
var question_ii = t_5/t_outcomes
print("The probability that 5 will come up atleast once = ", question_ii)
