~Barath
var cylinder_inner931=input("Enter the inner radius of the hollow cylinder: ","d")
var cylinder_outer931=input("Enter the outer radius of the hollow cylinder: ","d")
var new_cylinder_rad931
if(cylinder_outer931<cylinder_inner931):
	print("Invalid input, the outer radius is supposed to be greater than the inner radius")
else:
	new_cylinder_rad931=(cylinder_outer931^2)-(cylinder_inner931^2)
	new_cylinder_rad931=new_cylinder_rad931^(0.5)
	print("The outer radius of the hollow cylinder is: ",cylinder_outer931)
	print(" cm")
	print("The inner radius of the hollow cylinder is: ",cylinder_inner931)
	print(" cm")
	print("")
	print("Therefore, the radius of he recasted solid cylinder is: ",new_cylinder_rad931)
	print(" cm")
