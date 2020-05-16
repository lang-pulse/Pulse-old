~KAUSTUV
var speed_upstream = 4
var speed_downstream = 10
var speed_down_org = 3
var dist_travel_up = 4200
var time_upstream = dist_travel_up/speed_upstream
var dist_travel_down = time_upstream*speed_down_org
var tot_dist = dist_travel_down+dist_travel_up
var rel_speed = 4
var time = tot_dist/rel_speed
var total_time = time+time_upstream
print(total_time) 
