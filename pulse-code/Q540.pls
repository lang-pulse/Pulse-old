~Soumya
var apple = 3
print ("The number of apples are = ", apple)
print("")
var orange = 2
print ("The number of oranges are = ", orange)
print("")
var banana = 2
print ("The number of bananas are = ", banana)
print("")
var peach = 5
print ("The number of peaches are = ", peach)
print("")
var total = apple + orange + banana + peach
print("The total number of fruits are: ", total)
print("")
var prob_jack = peach/total
print("Probability of Jack getting a peach: ", prob_jack)
print("")
var prob_Bethanny = orange/(total-1)
print("Probability of Bethanny getting an orange after Jack picks: ", prob_jack)
print("")
var prob = prob_jack * prob_Bethanny
print("Probability that Jack gets a peach and Bethanny gets an orange = ", prob)
