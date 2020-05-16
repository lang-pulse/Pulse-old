~ Harishankar
var radius_r1_first_circle = 19
var radius_r2_second_circle = 9
var radius_r_third_circle
var circumference_first_circle = 2*(3.14)*radius_r1_first_circle
var circumference_second_circle = 2*(3.14)*radius_r2_second_circle
var circumference_third_circle = circumference_first_circle +circumference_second_circle
radius_r_third_circle = circumference_third_circle / (2*3.14)
print("The radius of circle which has circumference equal to sum of circumferences of two circles is")
print(radius_r_third_circle)
