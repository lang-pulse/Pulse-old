~Barath
var number=50
var i_prime
var j_prime
var count_prime
print("The prime numbers till ",number)
print(" is: ","")
i_prime=2
while(i_prime<=number):
	count_prime=0
	j_prime=1
	while(j_prime<=i_prime):
		if(i_prime%j_prime==0):
			count_prime=count_prime+1
		j_prime=j_prime+1
	if(count_prime==2):
		print(i_prime," ")
	i_prime=i_prime+1
