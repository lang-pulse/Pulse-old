~Barath
var original_fees=27000
var pincrease=12.5
var pincrease_amt
var fees
var i=1
var sum=0
pincrease_amt=(pincrease/100)*original_fees
fees=original_fees+(pincrease_amt*7)
print("the fees to be paid in the 8th year is:")
print(fees)
while(i<=8):
	sum=sum+original_fees
	original_fees=pincrease_amt+original_fees
	i=i+1
print("the total cost of education by the end of 8 years is:")
print(sum)
