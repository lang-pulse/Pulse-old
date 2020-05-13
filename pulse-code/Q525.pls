~Barath
var prob_married_18=input("Enter the probability of a girl getting married at the age of 18: ","d")
var prob_married_25=input("Enter the probability of a girl getting married at the age of 25: ","d")
var prob_married_30=input("Enter the probability of a girl getting married at the age of 30: ","d")
var prob_girls_18
var prob_girls_25
var prob_girls_30
prob_girls_18=prob_married_18*prob_married_18
prob_girls_25=prob_married_25*prob_married_25
prob_girls_30=prob_married_30*prob_married_30
print("")
print("The probability of girls getting married at 18 is: ",prob_married_18)
print("")
print("The probability of girls getting married at 25 is: ",prob_married_25)
print("")
print("The probability of girls getting married at 30 is: ",prob_married_30)
print("")
print("")
print("Therefore, the probability that both their daughters get married at 18 is: ",prob_girls_18)
print("")
print("Therefore, the probability that both their daughters get married at 25 is: ",prob_girls_25)
print("")
print("Therefore, the probability that both their daughters get married at 30 is: ",prob_girls_30)
print("")
