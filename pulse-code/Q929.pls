~Pranshul
var d_w_928 = 10
var h_w_928 = 8.4
var r_w_928 = d_w_928/2
var width928 = 7.5
var pi928 = 3.14
var soil928 = pi928*(r_w_928^2)*h_w_928
var e_d_928 = d_w_928 + 2* width928
var e_r_928 = e_d_928/2
var h_928 = soil928/(pi928*(e_r_928^2 - r_w_928^2))
print("Height of embarkment = ", h_928)
print("m")
