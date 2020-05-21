~Barath
var num_slots1022=input("Enter the number of slots: ","i")
var num_red1022=input("Enter the number of red slots: ","i")
var num_black1022=input("Enter the number of black slots: ","i")
var num_green1022=input("Enter the number of green slots: ","i")
var prob_red1022
var num_games1022=input("Enter the number of games played: ","i")
if((num_red1022+num_black1022+num_green1022)!=num_slots1022):
	print("Invalid input,please try again!")
else:
	prob_red1022=num_red1022/num_slots1022
	var prob_expect1022
	prob_expect1022=num_games1022*prob_red1022
	print("")
	print("The total number of slots is: ",num_slots1022)
	print("")
	print("The number of red slots is: ",num_red1022)
	print("")
	print("The number of black slots is: ",num_black1022)
	print("")
	print("The number of green slots is: ",num_green1022)
	print("")
	print("")
	print("The number of games that you can expect to win is: ",prob_expect1022)
	print("")
