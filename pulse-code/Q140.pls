~Barath
var y1_narme=0.5
var y2_narme=1.2
var nthroot=2
var diff_srnarme
var srnarme
diff_srnarme=y1_narme-y2_narme
if(diff_srnarme<0):
	diff_srnarme=diff_srnarme*(-1)
srnarme=diff_srnarme^(1/nthroot)
print("the value of y1_narme is:")
print(y1_narme)
print("the value of y2_narme is:")
print(y2_narme)
print("the Nth absolute root mean error of y1_narme and y2_narme is:")
print(srnarme)
