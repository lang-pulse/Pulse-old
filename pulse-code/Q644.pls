~Siddhartha
var n_ramanujan = 51242183
var count_ramanujan = 0
if(n_ramanujan % 2 == 0):
	count_ramanujan = count_ramanujan + 1
	while(n_ramanujan % 2 == 0):
		n_ramanujan = n_ramanujan // 2
var i_ramanujan = 3
while(i_ramanujan < (n_ramanujan ^ (0.5))):
	if(n_ramanujan % i_ramanujan == 0):
		count_ramanujan = count_ramanujan + 1
		while(n_ramanujan % i_ramanujan == 0):
			n_ramanujan = n_ramanujan // i_ramanujan
	i_ramanujan = i_ramanujan + 2
if(n_ramanujan > 2):
	count_ramanujan = count_ramanujan + 1
print("The number of distinct prime factors is/are: ", count_ramanujan)
