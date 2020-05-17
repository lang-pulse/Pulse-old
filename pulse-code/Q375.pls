~ Harishankar
var radius_first_circlr_r1 = 8
var radius_second_circle_r2 = 6
var radius_third_circle_R
var constant_pi = 3.14
var area_first_circle
var area_second_circle
var area_third_circle
area_first_circle = constant_pi * radius_first_circlr_r1^2
area_second_circle = constant_pi*radius_second_circle_r2^2
 area_third_circle = area_first_circle+area_second_circle
radius_third_circle_R = (area_third_circle /constant_pi)^(1/2)
print("Area of the third circle")
print(radius_third_circle_R)
