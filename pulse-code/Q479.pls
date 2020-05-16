~Barath
var dist_north=400
var dist_west=300
var dist_vertical=1200
var h_disp
var displacement
h_disp=(dist_north^2)+(dist_west^2)
h_disp=h_disp^(1/2)
displacement=(h_disp^2)+(dist_vertical^2)
displacement=displacement^(1/2)
print("The distance towards north: ",dist_north)
print(" m")
print("The distance towards west: ",dist_west)
print(" m")
print("The distance in vertical direction: ",dist_vertical)
print(" m")
print("Therefore, the total displacement of the aeeroplane is: ",displacement)
print(" m")
