~Barath
var num_prime=17
var i_pp
var j_pp
var count_pp
var pos_prime=0
i_pp=2
while(i_pp<=num_prime):
	count_pp=0
	j_pp=1
	while(j_pp<=i_pp):
		if(i_pp%j_pp==0):
			count_pp=count_pp+1
		j_pp=j_pp+1
	if(count_pp==2):
		pos_prime=pos_prime+1
	i_pp=i_pp+1
print("The prime number ",num_prime)
print(" is located at position ",pos_prime)
print("")
