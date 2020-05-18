~Pranshul
var speed_in_km_per_hour = 36
var speed_in_m_per_s = speed_in_km_per_hour * 5/18
var time_to_bring_to_rest = 4
var mass_of_3_wheeler = 400
var mass_of_driver = 65
var total_mass = mass_of_3_wheeler + mass_of_driver
var a = speed_in_m_per_s/time_to_bring_to_rest
var avg_force = total_mass * a
print("Average Retarding Force = ", avg_force)
print(" Newtons    ")
