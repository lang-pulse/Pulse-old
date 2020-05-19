~Barath
var ceiling_height=input("Enter the height of the ceiling: ","d")
var ball_speeed=input("Enter the speed of the ball: ","d")
var sin_thetha
var cos_thetha
var time_ball_throw
var horizontal_dist
sin_thetha=(ceiling_height*9.8)/(ball_speeed^2)
sin_thetha=sin_thetha^(0.5)
time_ball_throw=(2*ball_speeed*sin_thetha)
time_ball_throw=time_ball_throw/9.8
cos_thetha=1-(sin_thetha^2)
cos_thetha=cos_thetha^(0.5)
horizontal_dist=ball_speeed*cos_thetha*time_ball_throw
print("")
print("The height of the ceiling is: ",ceiling_height)
print(" m")
print("The speed of the ball being thrown is: ",ball_speeed)
print(" mps")
print("")
print("Therefore, the maximum horizontal distance a ball can be thrown to is: ",horizontal_dist)
print(" m")
