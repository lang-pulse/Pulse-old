~Harishankar
var n=23
var iter_prime=2
var jiter_prime
var prime
while(iter_prime<=n):
	prime=1
	jiter_prime=iter_prime-1
	while(jiter_prime>1):
		if(iter_prime%jiter_prime ==0):
			prime=0
		jiter_prime=jiter_prime-1
	if(prime==1):
		print(iter_prime)
	iter_prime=iter_prime+1
