~Siddhartha
var n_pattern_2 = input("Enter n: ", "i")
var i_pattern_2 = 1
var j_pattern_2 = 0
var k_pattern_2 = 0
while(i_pattern_2 <= n_pattern_2):
	j_pattern_2 = i_pattern_2
	while(j_pattern_2 < n_pattern_2):
		print(" ", "")
		j_pattern_2 = j_pattern_2 + 1
	while(k_pattern_2 != (2 * i_pattern_2 - 1)):
		if(k_pattern_2 == 0 or k_pattern_2 == (2 * i_pattern_2 - 2)):
			print("*", "")
		else:
			print(" ", "")
		k_pattern_2 = k_pattern_2 + 1
	k_pattern_2 = 0
	print("")
	i_pattern_2 = i_pattern_2 + 1
i_pattern_2 = 0
while(i_pattern_2 < (2 * n_pattern_2 - 1)):
	print("*", "")
	i_pattern_2 = i_pattern_2 + 1
