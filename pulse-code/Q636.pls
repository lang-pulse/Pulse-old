~Barath
var num_of_blls=input("Enter the number of balls: ","i")
var blls_store=num_of_blls
var num_of_bxos=input("Enter the number of boxes: ","i")
var req_num_blls=3
var box_store=num_of_bxos
var rem_blls=num_of_blls-req_num_blls
var rem_bxs=num_of_bxos-1
var ways_blls
ways_blls=num_of_bxos^num_of_blls
var fac_bx1=1
var diff_bx=num_of_blls-req_num_blls
while(num_of_blls!=0):
	fac_bx1=fac_bx1*num_of_blls
	num_of_blls=num_of_blls-1
var fac_bx2=1
while(req_num_blls!=0):
	fac_bx2=fac_bx2*req_num_blls
	req_num_blls=req_num_blls-1
var fac_bx3=1
while(diff_bx!=0):
	fac_bx3=fac_bx3*diff_bx
	diff_bx=diff_bx-1
var chos_blls_bx=fac_bx1/(fac_bx2*fac_bx3)
var rem_chce=rem_bxs^rem_blls
var prob_first_box=(chos_blls_bx*rem_chce)/ways_blls
print("")
print("The number of balls present: ",blls_store)
print("")
print("The number of boxes present: ",box_store)
print("")
print("")
print("The probability that the first box will contain 3 balls is: ",prob_first_box)
print("")
