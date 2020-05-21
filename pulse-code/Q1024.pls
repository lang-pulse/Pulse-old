~Barath
var total_marbles1024=input("Enter the total number of marbles: ","i")
var red_num1024=input("Enter the number of red marbles: ","i")
var white_num1024=input("Enter the number of white marbles: ","i")
var num_pick=input("Enter the number of times the marbles are picked: ","i")
var red_prob1024
var white_prob1024
var redprob_1024
var whiteprob_1024
var total_prob1024
if((red_num1024+white_num1024)!=total_marbles1024):
	print("Invalid input, please try again!")
else:
	red_prob1024=red_num1024/total_marbles1024
	white_prob1024=white_num1024/total_marbles1024
	redprob_1024=red_prob1024^num_pick
	whiteprob_1024=white_prob1024^num_pick
	total_prob1024=redprob_1024+whiteprob_1024
	print("")
	print("The total number of marbles: ",total_marbles1024)
	print("")
	print("The number of red marbles: ",red_num1024)
	print("")
	print("The number of white marbles: ",white_num1024)
	print("")
	print("")
	print("Therefore, the probability that the same colour is drawn ",num_pick)
	print(" times is: ",total_prob1024)
	print("")
