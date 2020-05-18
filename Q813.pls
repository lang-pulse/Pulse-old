~Siddhartha
var number_pal = 12345
var copy_number_pal = number_pal
var number_pal_len = 0
while(copy_number_pal != 0):
	number_pal_len = number_pal_len + 1
	copy_number_pal = copy_number_pal // 10
copy_number_pal = number_pal
var iter_pal = 0
var rev_number = 0
var rem_pal = 0
while(iter_pal < number_pal_len):
	rem_pal = copy_number_pal % 10
	rev_number = rev_number + (rem_pal * 10^(number_pal_len - iter_pal - 1))
	copy_number_pal = copy_number_pal // 10
	iter_pal = iter_pal + 1
var sum_pal = number_pal + rev_number
var count_dig_pal = 0
var sum_should_be = (number_pal % 10) + (rev_number % 10)
while(sum_pal != 0):
	rem_pal = sum_pal % 10
	if(rem_pal == sum_should_be):
		count_dig_pal = count_dig_pal + 1
	sum_pal = sum_pal // 10
if(count_dig_pal == number_pal_len):
	print("All digits in sum of number and its palindrome are equal")
else:
	print("Some digits are different in sum of number and its palindrome")
