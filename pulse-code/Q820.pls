~Siddhartha
var mass_milky_way_coeff = 2.5
var mass_milky_way_power = 11
var mass_sun_coeff = 2.0
var mass_sun_power = 36
var mass_galaxy_coeff = mass_milky_way_coeff * mass_sun_coeff
var mass_galaxy_power = mass_milky_way_power + mass_sun_power
var radius_milky_way_coeff = 4.73
var radius_milky_way_power = 20
var time_period_coeff = ((4 * (22 / 7) * (radius_milky_way_coeff^3)) / (6.67 * mass_galaxy_coeff))^(1/2)
var time_period_power = (radius_milky_way_power*3) - (-11 + mass_galaxy_power)
print("Time period in seconds = ", time_period_coeff)
print(" x 10^", time_period_power)
print(" s")
var time_period_hour_coeff = 3.55
var time_period_hour_power = 8
print("Time period in hours = ", time_period_hour_coeff)
print(" x 10^", time_period_hour_power)
print(" s")
