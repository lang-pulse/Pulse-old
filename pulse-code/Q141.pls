~Barath
var y1_drnarme=3
var y2_drnarme=7
var m=1
var n_drnarme=1
var max_drnarme
var min_drnarme
var diff_drnarme
var drnarme
diff_drnarme=y1_drnarme-y2_drnarme
if(diff_drnarme<0):
	diff_drnarme=diff_drnarme*(-1)
max_drnarme=(diff_drnarme^(1/m))
min_drnarme=(diff_drnarme^(1/n_drnarme))
if(max_drnarme<1):
	max_drnarme=1
if(min_drnarme>1):
	min_drnarme=1
drnarme=max_drnarme*min_drnarme
print("the value of y1_drnarme is:")
print(y1_drnarme)
print("the value of y2_drnarme is:")
print(y2_drnarme)
print("the max_drnarme value is:")
print(max_drnarme)
print("the min_drnarme value is:")
print(min_drnarme)
print("the Nth absolute root mean error of y1_drnarme and y2_drnarme is:")
print(drnarme)
