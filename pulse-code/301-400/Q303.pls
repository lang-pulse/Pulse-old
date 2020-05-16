~Barath
var car_spd=144
var ini_spd=0
var car_accel
var time_taken=20
var distance
car_spd=car_spd*(5/18)
car_accel=(car_spd-ini_spd)/time_taken
distance=(ini_spd*time_taken)+(0.5*car_accel*(time_taken^2))
print("The speed of the car is: ",car_spd)
print(" mps")
print("The time taken by the car to reach given speed is: ",time_taken)
print(" s")
print("The acceleration of the car is: ",car_accel)
print(" mps.sq")
print("Therefore, the distance travelled by the car is: ",distance)
print(" m")
