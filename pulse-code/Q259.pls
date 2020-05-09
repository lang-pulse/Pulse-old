~Pranav
var first_number = 900000000
var second_number = 800000
var sum_of_numbers = first_number + second_number
var digits_counter = 0
var copy_sum=sum_of_numbers
while(sum_of_numbers > 0):
	sum_of_numbers = sum_of_numbers // 10
	digits_counter = digits_counter + 1
if(digits_counter > 8):
	print("Sum has more than 8 digits")
	print("Overflow")
else:
	print(copy_sum)
