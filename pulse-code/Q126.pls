~Harishankar
var num_inp
var count_=1
var remainder
var sum_num
while(count_ <= 500):
	num_inp = count_
	sum_num = 0
	while( num_inp!=0):
		remainder = num_inp %10
		sum_num=sum_num +(remainder*remainder*remainder)
		num_inp=num_inp//10
	if(count_==sum_num):
		print(count_)
	count_=count_+1
