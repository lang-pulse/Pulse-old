~Barath
var pred_val=7
var true_out=3
var abs_diff
var rme
abs_diff=pred_val-true_out
if(abs_diff<0):
	abs_diff=abs_diff*(-1)
rme=abs_diff^(0.5)
print("the value of pred_val is:")
print(pred_val)
print("the value of true_out is:")
print(true_out)
print("the root mean error of the given values of pred_val and true_out are:")
print(rme)
