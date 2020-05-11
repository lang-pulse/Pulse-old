~Barath
var p=21000
var r=8
var time_yrs=5
var simple_int
var cinterest
var famtsi
var famtci
simple_int=(p*r*time_yrs)/100
famtsi=p+simple_int
print("the simple interest value is: ")
print(simple_int)
print("if using simple interest, the man has to pay:")
print(famtsi)
cinterest=(p*(1+(r/100))^time_yrs)
famtci=p+cinterest
print("the compound interest is: ")
print(cinterest)
print("if using compound interest, the man has to pay: ")
print(famtci)
