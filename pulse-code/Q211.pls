~Siddhartha
var rad = 18
var hei = 32
var vol_cylinder = (22 / 7) * (rad ^ 2) * hei
var hei_cone = 24
var rad_cone = ((22 / 7) * (rad ^ 2) * hei) / (8 * (22 / 7))
rad_cone = rad_cone ^ (0.5)
var sl_cone = ((hei_cone ^ 2) + (rad_cone ^ 2)) ^ (0.5)
print(sl_cone, " cm")
