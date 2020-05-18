~Barath
var number_males=input("Enter the number of males: ","i")
var number_females=input("Enter the number of females: ","i")
var number_passed=input("Enter the number of people who passed the test: ","d")
var num_male_notpass=1/3
var total_number
var num_male_pass
var probability_male
var probability_passed
var probability_male_pass
var tot_prob
total_number=number_males+number_females
if(number_passed>total_number):
	print("Invalid input, try again!!")
else:
	num_male_pass=num_male_notpass*number_males
	num_male_pass=number_males-num_male_pass
	probability_passed=number_passed/total_number
	probability_male=number_males/total_number
	probability_male_pass=num_male_pass/total_number
	tot_prob=(probability_passed+probability_male)-probability_male_pass
	print("")
	print("The number of males: ",number_males)
	print("")
	print("The number of females: ",number_females)
	print("")
	print("The number of people who passed: ",number_passed)
	print("")
	print("")
	print("Therefore, the probability that a person who took the exam passed or was a male is: ",tot_prob)
	print("")
