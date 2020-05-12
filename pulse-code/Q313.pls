~ Harishankar
var initial_velocity_km_s = 50
var initial_velocity_m_s =initial_velocity_km_s * 5/18
var finial_velocity_v = 0
var dist_travelled_before_rest_m = 6
var acceleration_a 
acceleration_a  = initial_velocity_m_s^2 /(2*dist_travelled_before_rest_m)
var new_initial_velocity_km_s = 100
var new_initial_velocity_m_s= new_initial_velocity_km_s* 5/18
var new_finial_velocity_v = 0
var new_distance = new_initial_velocity_m_s^2 /(2*acceleration_a )
print("The minium stopping distance of car is:")
print(new_distance )
