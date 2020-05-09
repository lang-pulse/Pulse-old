~Barath
var amt_digit=0
var i_digit
var j_digit
var k_digit
print("The 3 digit numbers that can be formed using 1,2,3,4 is: ","")
i_digit=1
while(i_digit<=4):
	j_digit=1
	while(j_digit<=4):
		k_digit=1
		while(k_digit<=4):
			if(k_digit!=i_digit and k_digit!=j_digit and i_digit!=j_digit):
				amt_digit=amt_digit+1
				print(i_digit,"")
				print(j_digit,"")
				print(k_digit," ")
			k_digit=k_digit+1
		j_digit=j_digit+1
	i_digit=i_digit+1
print("")
print(" ")
print("The number of the 3 digit numbers formed from 1,2,3,4 is: ",amt_digit)
print("")
