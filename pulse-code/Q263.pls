~Barath
var number=12
var i_sum
var j_sum
var count_sum
var sum_prime=0
i_sum=2
while(i_sum<=number):
	count_sum=0
	j_sum=1
	while(j_sum<=i_sum):
		if(i_sum%j_sum==0):
			count_sum=count_sum+1
		j_sum=j_sum+1
	if(count_sum==2):
		sum_prime=sum_prime+i_sum
	i_sum=i_sum+1
print("The sum of prime numbers upto ",number)
print(" is ",sum_prime)
print("")
