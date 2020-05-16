~Barath
var uplim=input("Enter the upper limit of the median class: ","i")
var lowlim=input("Enter the lower limit of the median class: ","i")
var fr1=input("Frequency 1: ","i")
var fr2=input("Frequency 2: ","i")
var fr3=input("Frequency 3: ","i")
var fr4=input("Frequency 4: ","i")
var fr5=input("Frequency 5: ","i")
var fr6=input("Frequency 6: ","i")
var fr7=input("Frequency 7: ","i")
var sum_fr=fr1+fr2+fr3+fr4+fr5+fr6+fr7
var cf1=fr1
var cf2=fr2+fr1
var cf=fr3+cf2
var class_h=lowlim-uplim
var median
median=((sum_fr/2)-cf)/fr4
median=median*class_h
median=median+uplim
print("")
print("The interval of the median class is: ",uplim)
print(" - ",lowlim)
print("")
print("The class height is: ",class_h)
print("")
print("")
print("The median lifetime of the lamp is: ",median)
print(" hrs")
