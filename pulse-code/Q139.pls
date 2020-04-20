~Barath
var y1=3
var y2=4
var diff
var rmse
diff=(y1^2)-(y2^2)
if(diff<0):
	diff=diff*(-1)
rmse=diff^(0.5)
print("the value of y1 is:")
print(y1)
print("the value of y2 is:")
print(y2)
print("the root mean squared error of y1 and y2 is:")
print(rmse)
