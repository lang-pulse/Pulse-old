~Barath
var y1=0.5
var y2=1.2
var n=2
var diff
var narme
diff=y1-y2
if(diff<0):
	diff=diff*(-1)
narme=diff^(1/n)
print("the value of y1 is:")
print(y1)
print("the value of y2 is:")
print(y2)
print("the Nth absolute root mean error of y1 and y2 is:")
print(narme)
