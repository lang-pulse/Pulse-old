~Barath
var model_d=3
var model_r
var model_h=12
var cylinder_h
var cone_h=2
var vol_cone
var vol_cones
var vol_cylinder
var vol_model
model_r=model_d/2
vol_cone=(1/3)*3.14*(model_r^2)*cone_h
vol_cones=2*vol_cone
cylinder_h=model_h-(2*cone_h)
vol_cylinder=3.14*(model_r^2)*cylinder_h
vol_model=vol_cylinder+vol_cones
print("the diameter of the model is: ",model_d)
print(" cm")
print("the radius of the model is: ",model_r)
print(" cm")
print("the height of the model is: ",model_h)
print(" cm")
print("the height of both cones is: ",cone_h)
print(" cm")
print("the volume of one cone is: ",vol_cone)
print(" cm.cb")
print("the height of the cylinder is: ",cylinder_h)
print(" cm")
print("the volume of the cylinder is: ",vol_cylinder)
print(" cm.cb")
print("the volume of air in the engineering project is: ",vol_model)
print(" cm.cb")
