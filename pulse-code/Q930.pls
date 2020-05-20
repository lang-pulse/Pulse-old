~Barath
var field_l930=input("Enter the length of the field: ","d")
var field_b930=input("Enter the breadth of the field: ","d")
var well_dia930=input("Enter the diameter of the dug out well: ","d")
var well_depth930=input("Enter the depth of the dug out well: ","d")
var well_rad930
well_rad930=well_dia930/2
var vol_well930
vol_well930=3.14*well_depth930*(well_rad930^2)
var rem_field930
var area_field930
var area_well930
area_field930=field_l930*field_b930
area_well930=3.14*(well_rad930^2)
rem_field930=area_field930-area_well930
var level_rise930
var level_risecm930
level_rise930=vol_well930/rem_field930
level_risecm930=level_rise930*100
print("")
print("The length of the field is: ",field_l930)
print(" m")
print("The breadth of the field is: ",field_b930)
print(" m")
print("The radius of the well is: ",well_rad930)
print(" m")
print("The depth of the well is: ",well_depth930)
print(" m")
print("")
print("The area of the field is: ",area_field930)
print(" m.sq")
print("The volume of the well is: ",vol_well930)
print(" m.cb")
print("Therefore, the height the level of the field has been raised to is: ",level_rise930)
print(" m or ",level_risecm930)
print(" cm")
