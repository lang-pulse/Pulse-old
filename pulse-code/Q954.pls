~Siddhartha
var diameter_cylinder_beak = 18
var radius_cylinder_beak = diameter_cylinder_beak / 2
var height_of_water_beaker = 40
var diameter_lead_sphere = 6
var radius_lead_sphere = diameter_lead_sphere / 2
var n_count = (radius_cylinder_beak^2 * height_of_water_beaker) / ((4/3) * radius_lead_sphere^3)
print("The number of lead spheres dropped in water = ", n_count)
