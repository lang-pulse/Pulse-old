~Siddhartha
var height_cyl_portion = 280
var radius_cyl_portion = 10
var volume_cyl_portion = (22/7) * radius_cyl_portion^2 * height_cyl_portion
print("The volume of cylindrical portion = ", volume_cyl_portion)
print(" cm3")
var rad_cone_portion = 10
var height_cone_portion = 42
var volume_cone_portion = (1/3) * (22/7) * rad_cone_portion^2 * height_cone_portion
print("The volume of conical portion = ", volume_cone_portion)
print(" cm3")
var total_vol_iron_pillar = volume_cyl_portion + volume_cone_portion
print("The total volume of iron pillar = ", total_vol_iron_pillar)
print(" cm3")
var weight_iron_pillar_one = 7.5
var weight_iron_pillar = total_vol_iron_pillar * weight_iron_pillar_one
print("The weight of the iron pillar = ", weight_iron_pillar)
print(" gm")
weight_iron_pillar = weight_iron_pillar / 1000
print("The weight of iron pillar (in kg) = ", weight_iron_pillar)
print(" kg")
