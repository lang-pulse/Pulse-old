~Barath
var num_flags=input("Enter the number of flags: ","i")
var num_signals=input("Enter the number of required signals: ","i")
var pos_signal=1
var jj=0
if(num_signals>num_flags):
	print("Invalid input, try again!")
else:
	while(jj<num_signals):
		pos_signal=pos_signal*num_flags
		num_flags=num_flags-1
		jj=jj+1
	print("")
	print("The number of flags: ",num_flags)
	print("")
	print("The number of required signals is: ",num_signals)
	print("")
	print("")
	print("The possible number of different signals that can be generated is: ",pos_signal)
	print("")
