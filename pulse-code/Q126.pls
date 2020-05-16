~Harishankar
var num_inp
var count_=1
var remainder_dig
var sum_num
while(count_ <= 500):
	num_inp = count_
	sum_num = 0
	while( num_inp!=0):
		remainder_dig = num_inp %10
		sum_num=sum_num +(remainder_dig*remainder_dig*remainder_dig)
		num_inp=num_inp//10
	if(count_==sum_num):
		print(count_)
	count_=count_+1
