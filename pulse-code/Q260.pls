~Barath
var x1_line1=-1
var y1_line1=-2
var x2_line1=1
var y2_line1=2
var x1_line2=-2
var y1_line2=0
var x2_line2=0
var y2_line2=4
var slope1
var slope2
slope1=(y2_line1-y1_line1)/(x2_line1-x1_line1)
slope2=(y2_line2-y1_line2)/(x2_line2-x1_line2)
print("The coordinates for line 1 are: ")
print("x1= ",x1_line1)
print(" x2= ",x2_line1)
print("")
print("y1= ",y1_line1)
print(" y2= ",y2_line1)
print("")
print("The coordinates for line 2 are: ")
print("x1= ",x1_line2)
print(" x2= ",x2_line2)
print("")
print("y1= ",y1_line2)
print(" y2= ",y2_line2)
print("")
print(" ")
if(slope1==slope2):
	print("Therefore, the lines are parallel")
else:
	print("Therfore, the lines are not parallel")
