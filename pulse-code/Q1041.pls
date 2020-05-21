~Barath
var num_boys1041=input("Enter the number of boys: ","i")
var boys_store1041=num_boys1041
var num_girls1041=input("Enter the number of girls: ","i")
var girls_store1041=num_girls1041
var total_stud1041=num_boys1041+num_girls1041
var num_selec1041=3
var req_girl1041=1
var req_boy1041=2
var fac_ways1=1
var diff_ways=total_stud1041-num_selec1041
while(total_stud1041!=0):
	fac_ways1=fac_ways1*total_stud1041
	total_stud1041=total_stud1041-1
var fac_ways2=1
while(num_selec1041!=0):
	fac_ways2=fac_ways2*num_selec1041
	num_selec1041=num_selec1041-1
var fac_ways3=1
while(diff_ways!=0):
	fac_ways3=fac_ways3*diff_ways
	diff_ways=diff_ways-1
var total_ways1041
total_ways1041=fac_ways1/(fac_ways2*fac_ways3)
var diff_girls=num_girls1041-req_girl1041
var fac_girl1=1
while(num_girls1041!=0):
	fac_girl1=fac_girl1*num_girls1041
	num_girls1041=num_girls1041-1
var fac_girl2=1
while(req_girl1041!=0):
	fac_girl2=fac_girl2*req_girl1041
	req_girl1041=req_girl1041-1
var fac_girl3=1
while(diff_girls!=0):
	fac_girl3=fac_girl3*diff_girls
	diff_girls=diff_girls-1
var total_girls1041
total_girls1041=fac_girl1/(fac_girl2*fac_girl3)
var diff_boy=num_boys1041-req_boy1041
var fac_boys1=1
while(num_boys1041!=0):
	fac_boys1=fac_boys1*num_boys1041
	num_boys1041=num_boys1041-1
var fac_boys2=1
while(req_boy1041!=0):
	fac_boys2=fac_boys2*req_boy1041
	req_boy1041=req_boy1041-1
var fac_boys3=1
while(diff_boy!=0):
	fac_boys3=fac_boys3*diff_boy
	diff_boy=diff_boy-1
var total_boys1041
total_boys1041=fac_boys1/(fac_boys2*fac_boys3)
var num_combo1041
num_combo1041=(total_girls1041*total_boys1041)/total_ways1041
print("")
print("The number of boys: ",boys_store1041)
print("")
print("The number of girls: ",girls_store1041)
print("")
print("")
print("The number of ways of choosing 1 girl out of ",girls_store1041)
print(" girls is: ",total_girls1041)
print("")
print("The number of ways of choosing 2 boys out of ",boys_store1041)
print(" boys is: ",total_boys1041)
print("")
print("")
print("Therefore, the number of ways of choosing a group of 3 students with 1 girl and 2 boys is: ",num_combo1041)
print("")
