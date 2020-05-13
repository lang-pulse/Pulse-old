~Barath
var num_balls=4
var juggle_speed=input("Enter the speed of the balls: ","d")
var accel_gravity=10
var ball_time=(2*juggle_speed)/accel_gravity
var time_per_ball=ball_time/num_balls
var h_ball1
h_ball1=(juggle_speed*time_per_ball)-(0.5*accel_gravity*(time_per_ball^2))
var h_ball2
h_ball2=(juggle_speed*(time_per_ball+1))-(0.5*accel_gravity*((time_per_ball+1)^2))
var h_ball3
h_ball3=(juggle_speed*(time_per_ball+2))-(0.5*accel_gravity*((time_per_ball+2)^2))
print("")
print("The number of balls juggled: ",num_balls)
print("")
print("The speed of the balls being juggled: ",juggle_speed)
print(" mps")
print("")
print("The height of ball 1 in the air is: ",h_ball1)
print(" m")
print("The height of ball 2 in the air is: ",h_ball2)
print(" m")
print("The height of ball 3 in the air is: ",h_ball3)
print(" m")
