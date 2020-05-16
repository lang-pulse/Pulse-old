~Siddhartha
var n_butterfly = input("Enter n: ", "i")
var i_butterfly = 0
var j_butterfly = 0
while(i_butterfly < n_butterfly):
	j_butterfly = 0
	while(j_butterfly < (2 * n_butterfly)):
		if(i_butterfly >= j_butterfly):
			print("*", "")
		else:
			print(" ", "")
		if(i_butterfly >= (2 * n_butterfly - 1) - j_butterfly):
			print("*", "")
		else:
			print(" ", "")
		j_butterfly = j_butterfly + 1
	print("")
	i_butterfly = i_butterfly + 1
i_butterfly = 0
j_butterfly = 0
while(i_butterfly < n_butterfly):
	j_butterfly = 0
	while(j_butterfly < (2 * n_butterfly)):
		if(i_butterfly + j_butterfly <= n_butterfly - 1):
			print("*", "")
		else:
			print(" ", "")
		if((i_butterfly + n_butterfly) <= j_butterfly):
			print("*", "")
		else:
			print(" ", "")
		j_butterfly = j_butterfly + 1
	print("")
	i_butterfly = i_butterfly + 1
