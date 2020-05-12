~Barath
var num_kids=3
var genders=2
var num_boys=1
var num_girls=1
var prob_boys
var prob_all_boys
var prob_all_girls
prob_boys=num_boys/genders
prob_all_boys=prob_boys^num_kids
prob_all_girls=1-prob_all_boys
print("The number of kids expected: ",num_kids)
print("")
print("Probability of all kids being boys is: ",prob_all_boys)
print("")
print("Therefore, the probability of all the kids being girls is: ",prob_all_girls)
print("")
