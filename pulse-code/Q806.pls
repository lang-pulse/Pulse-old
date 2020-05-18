~Barath
var mass_billi_ball=input("Enter the mass of the billiard balls: ","d")
var initial_velocity_billi=input("Enter the velocity of the billiard balls: ","d")
var momentum_billi1
var momentum_billi2
momentum_billi1=mass_billi_ball*initial_velocity_billi
momentum_billi2=-momentum_billi1
var impulse_12
var impulse_21
impulse_12=momentum_billi1-momentum_billi2
impulse_21=momentum_billi2-momentum_billi1
print("")
print("The mass of both the billiard balls is: ",mass_billi_ball)
print(" kilogram")
print("The velocity both the billiard balls are moving in is: ",initial_velocity_billi)
print(" metre/second")
print("The final momentum of the first billiard ball is: ",momentum_billi1)
print(" kg mps")
print("The final momentum of the second billiard ball is: ",momentum_billi2)
print(" kg-mps")
print("")
print("Therefore, the impulse imparted on the first billiard ball is: ",impulse_12)
print(" kg_mps")
print("Therefore, the impulse imparted on the second billiard ball is: ",impulse_21)
print(" kgmps")
