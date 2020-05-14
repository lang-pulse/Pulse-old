~Barath
var tele_digits=input("Enter the number of digits for the telephone number: ","i")
var tele_num_digit=10
var rem_tele=tele_digits-2
var rem_digits=tele_num_digit-2
var jeta=1
var pos_tele=1
if(tele_digits>10):
	print("Invalid input, try again!")
else:
	while(jeta<=rem_tele):
		pos_tele=pos_tele*rem_digits
		rem_digits=rem_digits-1
		jeta=jeta+1
	print("")
	print("Number of digits for the telephone number: ",tele_digits)
	print("")
	print("The remaining number of digits to be filled: ",rem_tele)
	print("")
	print("")
	print("The number of telephone numbers that can be formed is: ",pos_tele)
	print("")
