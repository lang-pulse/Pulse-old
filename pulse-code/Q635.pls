~Srivatsan
var months=12
var options=11
var choices=months*options
var persons=6
var p=1
var i=1
while(i<6):
	p=p*12
	i=i+1
var probs= (choices*31)/p
print("The probability that birth days of six different persons will fall in exactly two calendar months is")
print(probs)
