~Barath
var num_digits=10
var dig_pin=4
var repeat
var not_repeat=1
var iterate=0
var prob_not_repeat
repeat=num_digits^dig_pin
while(iterate<dig_pin):
	not_repeat=not_repeat*num_digits
	num_digits=num_digits-1
	iterate=iterate+1
prob_not_repeat=not_repeat/repeat
print("The number of pin codes that can be formed while repeating digits is: ",repeat)
print("")
print("The number of pin codes that can be formed without repeating digits is: ",not_repeat)
print("")
print("Therefore, the probability of no repeated digits is: ",prob_not_repeat)
print("")
