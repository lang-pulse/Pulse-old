~Barath
var odd_favourable=input("Enter the number of favourable outcomes: ","i")
var odd_unfavourable=input("Enter the number of unfavourable outcomes: ","i")
var sum_odds
var prob_occur
sum_odds=odd_favourable+odd_unfavourable
prob_occur=odd_favourable/sum_odds
print("")
print("The number of favourable outcomes are: ",odd_favourable)
print("")
print("The number of unfavourable outcomes are: ",odd_unfavourable)
print("")
print("")
print("The probability of the event occuring is: ",prob_occur)
print("")
print("The probability of the event occuring (in fraction format) is: ",odd_favourable)
print("/",sum_odds)
print("")
