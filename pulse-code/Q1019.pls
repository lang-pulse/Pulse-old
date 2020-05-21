~Barath
var cone_rad1019=input("Enter the radius of the ice-cream cone: ","d")
var cone_h1019=input("Enter the height of the ice-cream cone: ","d")
var unfilled1019=input("Enter the amount of ice cream cone not filled: ","d")
var vol_cone1019
vol_cone1019=(1/3)*3.14*cone_h1019*(cone_rad1019^2)
var rem_vol1019
var rem_ice1019
rem_vol1019=1-unfilled1019
rem_ice1019=rem_vol1019*vol_cone1019
print("")
print("The radius of the ice cream cone is: ",cone_rad1019)
print(" cm")
print("The height of the ice cream cone is: ",cone_h1019)
print(" cm")
print("The part of the ice cream left unfilled: ",unfilled1019)
print("")
print("")
print("The volume of the ice cream cone is: ",vol_cone1019)
print(" cm.cb")
print("Therefore, the volume of the ice cream in the cone is: ",rem_ice1019)
print(" cm.cb")
