~Barath
var shell_extd=input("Enter the diameter of the spherical shell: ","d")
var cylinder_h928=input("Enter the height of the cylinder: ","d")
var cylinder_d928=input("Enter the diameter of the cylinder: ","d")
var cylinder_r928
var shell_extr
var shell_intr
var shell_intd
shell_extr=shell_extd/2
cylinder_r928=cylinder_d928/2
var vol_cyl928
vol_cyl928=3.14*cylinder_h928*(cylinder_r928^2)
shell_intr=vol_cyl928/(3.14*(4/3))
shell_intr=(shell_extr^3)-shell_intr
shell_intr=shell_intr^(1/3)
shell_intd=shell_intr*2
print("")
print("The external diameter of the lead spherical shell is: ",shell_extd)
print(" cm")
print("The height of the cylinder is: ",cylinder_h928)
print(" cm")
print("The diameter of the cylinder is: ",cylinder_d928)
print(" cm")
print("")
print("Therefore, the internal radius of spherical shell is '",shell_intr)
print("cm' and the internal diameter of the spherical shell is '",shell_intd)
print("cm'")
