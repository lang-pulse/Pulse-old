~Barath
var p=21000
var r=8
var t=5
var si
var ci
var famtsi
var famtci
si=(p*r*t)/100
famtsi=p+si
print("the simple interest is: ")
print(si)
print("if using simple interest, the man has to pay:")
print(famtsi)
ci=(p*(1+(r/100))^t)
famtci=p+ci
print("the compound interest is: ")
print(ci)
print("if using compound interest, the man has to pay: ")
print(famtci)
