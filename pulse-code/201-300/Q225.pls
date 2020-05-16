~Barath
var gb_h=5
var gb_d=2.8
var gb_r
var cylinder_h
var vol_cylinder
var vol_hemi
var vol_hemis
var vol_gb
var vol_gb45
var sugar=30
var amt_sugar
gb_r=gb_d/2
cylinder_h=gb_h-(2*gb_r)
vol_cylinder=3.14*(gb_r^2)*cylinder_h
vol_hemi=(2/3)*3.14*(gb_r^3)
vol_hemis=2*vol_hemi
vol_gb=vol_hemis+vol_cylinder
vol_gb45=45*vol_gb
amt_sugar=(sugar/100)*vol_gb45
print("the height of gulab jamun is: ",gb_h)
print(" cm")
print("the radius of the gulab jamun is: ",gb_r)
print(" cm")
print("the height of the cylinderical part is: ",cylinder_h)
print(" cm")
print("the volume of the cylinderical part of the gulab jamun is: ",vol_cylinder)
print(" cm.cb")
print("the volume of the hemispherical part of the gulab jamun is: ",vol_hemi)
print(" cm.cb")
print("the volume of one gulab jamun is: ",vol_gb)
print(" cm.cb")
print("the volume of 45 gulab jamuns is: ",vol_gb45)
print(" cm.cb")
print("the amount of sugar in one gulab jamun is: ",sugar)
print("%")
print("Therefore the amount of sugar in 45 gulab jamun is: ",amt_sugar)
print(" cm.cb")
