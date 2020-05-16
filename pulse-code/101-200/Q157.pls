~Barath
var dec_num=12.976212
var num_of_digits=2
var storage=dec_num
var last_dig
dec_num=dec_num*10^(num_of_digits+1)
last_dig=dec_num%10
if(last_dig>=5):
	dec_num=dec_num//10
	dec_num=dec_num+1
	dec_num=dec_num/10^(num_of_digits)
else:
	dec_num=dec_num//10
	dec_num=dec_num/10^(num_of_digits)
print("The original number is: ",storage)
print("")
print("The number after rounding it to ",num_of_digits)
print(" digits is: ",dec_num)
print("")
