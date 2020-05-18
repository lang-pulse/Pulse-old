~Siddhartha
var v_air_craft = 720
v_air_craft = (720 * 5) / 18
var angle_of_banking_theta = 15
var tangent_fifteen = 0.2679491924311227
var radius_loop_curve = (v_air_craft^2) / (9.8 * tangent_fifteen)
radius_loop_curve = radius_loop_curve / 1000
print("Radius of the loop curve = ", radius_loop_curve)
print(" km")
