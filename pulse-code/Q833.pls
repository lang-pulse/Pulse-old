~Barath
var mass_spaceship=input("Enter the mass of the spaceship: ","d")
var mass_sun=2*(10^30)
var mass_mars=6.4*(10^23)
var orbital_radius_mars=2.28*(10^11)
var radius_mars=3.395*(10^6)
var G_const=6.67*(10^-11)
var potential_energy_sun
var potential_energy_mars
var total_energy_ship
potential_energy_sun=G_const*mass_sun*mass_spaceship
potential_energy_sun=potential_energy_sun/orbital_radius_mars
potential_energy_sun=potential_energy_sun*(-1)
potential_energy_mars=G_const*mass_mars*mass_spaceship
potential_energy_mars=potential_energy_mars/radius_mars
potential_energy_mars=potential_energy_mars*(-1)
total_energy_ship=potential_energy_mars+potential_energy_sun
total_energy_ship=total_energy_ship*(-1)
print("")
print("The mass of the spaceship is: ",mass_spaceship)
print(" KG")
print("The mass of the sun is: ",mass_sun)
print(" KG")
print("The mass of mars is: ",mass_mars)
print(" KG")
print("The orbital radius of mars is: ",orbital_radius_mars)
print(" m")
print("The radius of mars is: ",radius_mars)
print(" m")
print("")
print("Therefore, the amount of energy needed to launch the spaceship out of the solar system is: ",total_energy_ship)
print(" J")
