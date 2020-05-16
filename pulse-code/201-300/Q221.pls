~Barath
var h_cylinder=2.1
var dia=4
var rad
var cost=500
var slant_height=2.8
var area_cone
var area_cylinder
var total_area
var total_cost
rad=dia/2
area_cylinder=2*3.14*rad*h_cylinder
area_cone=3.14*rad*slant_height
total_area=area_cone+area_cylinder
total_cost=cost*total_area
print("The height of the cylinderical part of the tent is: ",h_cylinder)
print(" m")
print("The diameter of the tent is: ",dia)
print(" m")
print("The radius of the tent is: ",rad)
print(" m")
print("The slant height of the conical part of the tent is: ",slant_height)
print(" m")
print("the area of the cylinderical part of the tent is: ",area_cylinder)
print(" m.sq")
print("The area of the conical part of the tent is: ",area_cone)
print(" m.sq")
print("Therefore, the total area of the tent is: ",total_area)
print(" m.sq")
print("The cost per metre is: Rs ",cost)
print("")
print("Therefore, the total cost to make the tent is: Rs ",total_cost)
print("")
