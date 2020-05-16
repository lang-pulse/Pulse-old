~Siddhartha
var n_arrows = input("Enter n: ", "i")
var i_arrows = 0
var j_arrows = 0
var num1_arrows = n_arrows // 2 * 3
print("Right arrow")
while(i_arrows < n_arrows):
	j_arrows = 0
	while(j_arrows < n_arrows):
		if((i_arrows == n_arrows // 2) or (j_arrows - i_arrows == n_arrows // 2) or (i_arrows + j_arrows == num1_arrows)):
			print("*", "")
		else:
			print(" ", "")
		j_arrows = j_arrows + 1
	print("")
	i_arrows = i_arrows + 1
i_arrows = 0
j_arrows = 0
print("Left arrow")
while(i_arrows < n_arrows):
	j_arrows = 0
	while(j_arrows < n_arrows):
		if((i_arrows == n_arrows // 2) or (i_arrows - j_arrows == n_arrows // 2) or (i_arrows + j_arrows == n_arrows // 2)):
			print("*", "")
		else:
			print(" ", "")
		j_arrows = j_arrows + 1
	print("")
	i_arrows = i_arrows + 1
