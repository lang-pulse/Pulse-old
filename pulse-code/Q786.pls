~Siddhartha
var n_plus = input("Enter value of n for plus pattern: ", "i")
var i_plus = 1
var j_plus = 0
while(i_plus <= (n_plus * 2 - 1)):
	if(i_plus == n_plus):
		j_plus = 1
		while(j_plus <= (n_plus * 2 - 1)):
			print("+", "")
			j_plus = j_plus + 1
	else:
		j_plus = 1
		while(j_plus <= (n_plus - 1)):
			print(" ", "")
			j_plus = j_plus + 1
		print("+", "")
	i_plus = i_plus + 1
	print("")
