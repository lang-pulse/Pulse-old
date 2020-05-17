~Siddhartha
var bin_inp = input("Enter a binary number: ")
var i_inp = 0
print("The 1s complement of the binary number = ", "")
while((bin_inp % i_inp) != "~"):
	if((bin_inp % i_inp) == "1"):
		print("0", "")
	else:
		print("1", "")
	i_inp = i_inp + 1
print("")
print("The original binary number = ", bin_inp)
