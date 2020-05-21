~Soumya
var surface_charge_d = 10
print("Surface charge density of the earth = ", surface_charge_d)
print("^- 9 C m - 2")
var current_over_globe = 1800
print("The current over the globe = ",current_over_globe)
print(" A")
var r_of_earth = 6.37
print("Radius of the earth = ",r_of_earth)
print(" x 10^6 m")
var surface_area_globe = 4*(22/7)*r_of_earth*r_of_earth/100
print("The surface area of the globe is = ", surface_area_globe)
print(" 10^14 m^2")
var charge_globe_value = surface_charge_d * surface_area_globe * 1014/10000
print("The Charge on the earth surface = ", charge_globe_value)
print(" x 10^5 C")
print("Since current = charge/time")
var time_neutralise_surface = 100000* charge_globe_value / current_over_globe
print("time taken to neutralize the earth's surface = ",time_neutralise_surface)
print(" s")
