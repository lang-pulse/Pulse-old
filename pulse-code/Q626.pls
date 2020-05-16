~Soumya
var dice = 6
print("Number of dices thrown = ", dice)
print("The total number of ways in which all dice show different faces is")
print("same as the number of arrangements of 6 numbers 1,2,3,4,5,6 by taking all at a time")
print("So, favourable number of elementary events -6")
var fact = 1
var i = 1
while (i<=dice):
	fact = fact * i
	i = i + 1
print("The Factorial of 6 = ", fact)
print("")
var prob = fact/(6*6*6*6*6*6)
print("The probability is = ", prob)
