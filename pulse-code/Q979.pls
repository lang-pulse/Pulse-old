~Siddhartha
var height_chars = 5
var width_chars = (2 * height_chars) - 1
var i_p_pattern = 0
var j_p_pattern = 0
while(i_p_pattern < height_chars):
	print("P", "")
	j_p_pattern = 0
	while(j_p_pattern < height_chars):
		if((i_p_pattern == 0 or i_p_pattern == (height_chars / 2)) and (j_p_pattern < (height_chars - 1))):
			print("P", "")
		else:
			if((i_p_pattern < (height_chars / 2)) and (j_p_pattern == (height_chars - 1)) and (i_p_pattern != 0)):
				print("P", "")
			else:
				print(" ", "")
		j_p_pattern = j_p_pattern + 1
	i_p_pattern = i_p_pattern + 1
	print("")
var i_u_pattern = 0
var j_u_pattern = 0
while(i_u_pattern < height_chars):
	if(i_u_pattern != 0  and i_u_pattern != height_chars - 1):
		print("U", "")
	else:
		print(" ", "")
	j_u_pattern = 0
	while(j_u_pattern < height_chars):
		if(((i_u_pattern == height_chars - 1) and j_u_pattern >= 0 and j_u_pattern < height_chars - 1)):
			print("U", "")
		else:
			if(j_u_pattern == height_chars - 1 and i_u_pattern != 0 and i_u_pattern != height_chars - 1):
				print("U", "")
			else:
				print(" ", "")
		j_u_pattern = j_u_pattern + 1
	i_u_pattern = i_u_pattern + 1
	print("")
print("")
var i_l_pattern = 0
var j_l_pattern = 0
while(i_l_pattern < height_chars):
	print("L", "")
	j_l_pattern = 0
	while(j_l_pattern <= height_chars):
		if(i_l_pattern == height_chars - 1):
			print("L", "")
		else:
			print(" ", "")
		j_l_pattern = j_l_pattern + 1
	i_l_pattern = i_l_pattern + 1
	print("")
