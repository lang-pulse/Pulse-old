~Pranshul
var ret_force = 50
var mass_of_body = 20
var init_speed = 15
var Retardation = ret_force/mass_of_body
#using v = u+at, where v = 0, u = init_speed and a = -Retardation
var time_to_stop = init_speed/Retardation
print("Time taken to stop = ", time_to_stop)
print("s")
