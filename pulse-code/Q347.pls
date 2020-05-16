~KAUSTUV
var cone_h=20
var h_upper=cone_h/2
var h_lower=cone_h/2
var r1
var frustum_vol
var r2
var rad_sum
r1=cone_h/(3^(1/2))
r2=h_upper/(3^(1/2))
rad_sum=(r1^2)+(r2^2)+(r1*r2)
frustum_vol=(1/3)*3.14*h_lower*rad_sum
var wire_dia=1/16
var wire_rad=wire_dia/2
var vol_wire
var wire_length
vol_wire=3.14*(wire_rad^2)
wire_length=frustum_vol/vol_wire
wire_length=wire_length/100
print(wire_length)
