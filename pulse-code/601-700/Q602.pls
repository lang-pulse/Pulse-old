~Barath
var num_of_digits=input("Enter the number of digits: ","i")
var choice_dig=6
var rem_choice=choice_dig-1
var ij=0
var num_pos_dig=1
if(num_of_digits>choice_dig):
	print("Invalid input, number should be less than or equal to 6")
else:
	while(ij<(num_of_digits-1)):
		num_pos_dig=num_pos_dig*rem_choice
		rem_choice=rem_choice-1
		ij=ij+1
	print("")
	print("The number of digits in the number: ",num_of_digits)
	print("")
	print("")
	print("Therefore, the amount of ",num_of_digits)
	print(" digit numbers that can be formed is: ",num_pos_dig)
