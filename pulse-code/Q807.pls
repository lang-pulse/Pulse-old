~Barath
var mass_guns=input("Enter the mass of the gun: ","d")
var mass_shells=input("Enter the mass of the shell: ","d")
var vel_shells=input("Enter the velocity of the shell: ","d")
var recoil_velo
recoil_velo=(mass_shells*vel_shells)/mass_guns
print("The mass of the gun is: ",mass_guns)
print(" kilos")
print("The mass of the shell is: ",mass_shells)
print(" kilogram")
print("The velocity of the shell is: ",vel_shells)
print(" metres/secs")
print("")
print("Therefore, the recoil velocity of the gun is: ",recoil_velo)
print(" metres/seconds")
