~Barath
var x1=0
var y1=0
var x2=20
var y2=0
var x3=10
var y3=30
var x=10
var y=15
var area1
var area2
var area3
var total_areat
var sum_areas
total_areat=(x1*(y2-y3))+(x2*(y3-y1))+(x3*(y1-y2))
total_areat=total_areat/2
area1=(x*(y1-y2))+(x1*(y2-y))+(x2*(y-y1))
area1=area1/2
area2=(x*(y3-y1))+(x3*(y1-y))+(x1*(y-y3))
area2=area2/2
area3=(x*(y2-y3))+(x2*(y3-y))+(x3*(y-y2))
area3=area3/2
sum_areas=area1+area2+area3
print("The triangle points are: ")
print("x1=",x1)
print(" x2=",x2)
print(" x3=",x3)
print("")
print("y1=",y1)
print(" y2=",y2)
print(" y3=",y3)
print("")
print("The coordinates of the points are: ")
print("x=",x)
print(" y=",y)
print("")
if(sum_areas==total_areat):
	print("The point ",x)
	print(" and ",y)
	print(" lie in the triangle")
else:
	print("The point ",x)
	print(" and ",y)
	print(" does not lie in the triangle")
