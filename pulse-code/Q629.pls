~Barath
var num_of_toss=input("Enter the number of times the dice is tossed: ","i")
var total_possible_outcomes=6
var expec_num=input("Enter a number from 1-6: ","i")
var possib_outcome=6-expec_num
var probability_die
probability_die=(possib_outcome^num_of_toss)/(total_possible_outcomes^num_of_toss)
print("")
print("The probability of having a number greater than ",expec_num)
print(" on each toss is: ",probability_die)
print("")
