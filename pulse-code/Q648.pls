~Siddhartha
var n_pattern_3 = input("Enter n: ", "i")
var i_pattern_3 = 0
var j_pattern_3 = 0
var k_pattern_3 = 0
while(i_pattern_3 < n_pattern_3):
	print("*", " ")
	i_pattern_3 = i_pattern_3 + 1
i_pattern_3 = n_pattern_3
while(i_pattern_3 >= 1):
	j_pattern_3 = 0
	while(j_pattern_3 < (n_pattern_3 - i_pattern_3)):
		while(k_pattern_3 != (2 * i_pattern_3 - 1)):
			if(k_pattern_3 == 0 or k_pattern_3 == (2 * i_pattern_3 - 2)):
				print("*", "")
			else:
				print(" ", "")
			k_pattern_3 = k_pattern_3 + 1
		j_pattern_3 = j_pattern_3 + 1
	k_pattern_3 = 0
	print("")
	i_pattern_3 = i_pattern_3 - 1
