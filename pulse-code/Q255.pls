~Pranav
var months=6
var amount=100000
var i_debt=0
var debt=0
while(i_debt<months):
	amount=amount+amount*0.04
	if(amount%1000!=0):
		amount=amount-amount%1000
		amount=amount+1000
	debt=amount
	i_debt=i_debt+1
print("Amount of debt is:","")
print(debt)
