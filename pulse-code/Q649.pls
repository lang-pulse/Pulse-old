~Siddhartha
var n_pattern_4 = input("Enter n: ", "i")
var i_pattern_4 = 1
var j_pattern_4 = 0
while(i_pattern_4 <= n_pattern_4):
	j_pattern_4 = 1
	while(j_pattern_4 < i_pattern_4):
		print(" ", "")
		j_pattern_4 = j_pattern_4 + 1
	j_pattern_4 = 1
	while(j_pattern_4 <= (n_pattern_4 * 2 - (2 * i_pattern_4 - 1))):
		if(i_pattern_4 == 1 or j_pattern_4 == 1 or j_pattern_4 == (n_pattern_4 * 2 - (2 * i_pattern_4 - 1))):
			print("*", "")
		else:
			print(" ", "")
		j_pattern_4 = j_pattern_4 + 1
	print("")
	i_pattern_4 = i_pattern_4 + 1
