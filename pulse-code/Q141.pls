~Barath
var y1=3
var y2=7
var m=1
var n=1
var max
var min
var diff
var narme
diff=y1-y2
if(diff<0):
	diff=diff*(-1)
max=(diff^(1/m))
min=(diff^(1/n))
if(max<1):
	max=1
if(min>1):
	min=1
narme=max*min
print("the value of y1 is:")
print(y1)
print("the value of y2 is:")
print(y2)
print("the max value is:")
print(max)
print("the min value is:")
print(min)
print("the Nth absolute root mean error of y1 and y2 is:")
print(narme)
