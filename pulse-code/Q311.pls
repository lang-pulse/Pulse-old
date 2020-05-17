~ Harishankar
var intial_velocity_first_ball = 0
var time_after_balls_meet =18
var time_after_second_ball_thrown = 6
var initial_velocity_second_ball
var acceleration_due_to_gravity = 9.8
var distance_covered_ball_in_18_Sec  = 1/2 * acceleration_due_to_gravity *time_after_balls_meet^2
var time_gap = time_after_balls_meet- time_after_second_ball_thrown
initial_velocity_second_ball = (distance_covered_ball_in_18_Sec - ((1/2)*acceleration_due_to_gravity*time_gap^2))/time_gap
print("Thus the second ball must be thrown at a speed of")
print(initial_velocity_second_ball)
