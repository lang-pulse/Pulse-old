~Siddhartha
var n_eight = input("Enter the value of n for 8 pattern: ", "i")
var i_eight = 1
var j_eight = 0
while(i_eight < (n_eight * 2)):
	j_eight = 1
	while(j_eight <= n_eight):
		if((i_eight == 1 and (j_eight == 1 or j_eight == n_eight)) or (i_eight == n_eight and (j_eight == 1 or j_eight == n_eight)) or (i_eight == n_eight * 2 - 1 and (j_eight == 1 or j_eight == n_eight))):
			print(" ", "")
		else:
			if(i_eight == 1 or i_eight == n_eight or i_eight == (n_eight * 2) - 1 or j_eight == 1 or j_eight == n_eight):
				print("8", "")
			else:
				print(" ", "")
		j_eight = j_eight + 1
	i_eight = i_eight + 1
	print("")
