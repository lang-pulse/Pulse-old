~ Harishankar PV
var pi = 3.14
var R_upper_circularend_frustum = 18/2
var r_lower_circularend_fustum = 8/2
var h1_frustum = 22-10
var h2_cylinder = 10
var slant_height_frustum 
var CSA_frustum
var CSA_cylinder
var area_tin_sheet
slant_height_frustum = ((R_upper_circularend_frustum-r_lower_circularend_fustum)^2 +h1_frustum^2 )^(1/2)
print(slant_height_frustum )
CSA_frustum = pi*(R_upper_circularend_frustum +r_lower_circularend_fustum)*slant_height_frustum
CSA_cylinder = 2*pi*r_lower_circularend_fustum*h2_cylinder
area_tin_sheet =CSA_frustum + CSA_cylinder
print("The area of the tin sheet required to make the funnel is:")
print(area_tin_sheet)
