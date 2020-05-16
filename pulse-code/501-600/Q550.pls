~Barath
var digits=10
var area_digits=3
var possibilities
var prob_areacode
possibilities=(digits-2)*digits*digits
prob_areacode=1/possibilities
print("The number of digits in the area code is: ",area_digits)
print("")
print("The number of possible area code numbers: ",possibilities)
print("")
print("Therefore, the probability that a person will be able to guess ur area code is: ",prob_areacode)
print("")
