~Siddhartha
var n_gcd_num = 2448
var gcd_num = 0
var rem_gcd = 0
var smaller_gcd = 0
var i_gcd = 0
var gcd_val = 0
while(n_gcd_num != 0):
	rem_gcd = n_gcd_num % 10
	if(rem_gcd > gcd_num):
		smaller_gcd = gcd_num
	else:
		smaller_gcd = rem_gcd
	while(i_gcd < (smaller_gcd + 1)):
		if((rem_gcd % i_gcd == 0) and (gcd_num % i_gcd == 0)):
			gcd_val = i_gcd
		i_gcd = i_gcd + 1
	if(gcd_num == 1):
		print(1)
	else:
		n_gcd_num = n_gcd_num // 10
print(gcd_num)
