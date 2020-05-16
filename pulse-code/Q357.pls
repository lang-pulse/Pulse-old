~Barath
var assumed_m
var uper1=100
var low1=150
var freq1=4
var uper2=150
var low2=200
var freq2=5
var uper3=200
var low3=250
var freq3=12
var uper4=250
var low4=300
var freq4=2
var uper5=300
var low5=350
var freq5=2
var class_int=uper2-uper1
var mark1=(uper1+low1)/2
var mark2=(uper2+low2)/2
var mark3=(uper3+low3)/2
var mark4=(uper4+low4)/2
var mark5=(uper5+low5)/2
if(freq1>freq2 and freq1>freq3 and freq1>freq4 and freq1>5):
	assumed_m=mark1
else:
	if(freq2>freq1 and freq2>freq3 and freq2>freq4 and freq2>freq5):
		assumed_m=mark2
	else:
		if(freq3>freq1 and freq3>freq2 and freq3>freq4 and freq3>freq5):
			assumed_m=mark3
		else:
			if(freq4>freq1 and freq4>freq2 and freq4>freq3 and freq4>freq5):
				assumed_m=mark4
			else:
				if(freq5>freq1 and freq5>freq2 and freq5>freq3 and freq5>freq4):
					assumed_m=mark5
var u1=(mark1-assumed_m)/class_int
var u2=(mark2-assumed_m)/class_int
var u3=(mark3-assumed_m)/class_int
var u4=(mark4-assumed_m)/class_int
var u5=(mark5-assumed_m)/class_int
var f1u1=freq1*u1
var f2u2=freq2*u2
var f3u3=freq3*u3
var f4u4=freq4*u4
var f5u5=freq5*u5
var sum_fiui
sum_fiui=f1u1+f2u2+f3u3+f4u4+f5u5
var sum_freq
sum_freq=freq1+freq2+freq3+freq4+freq5
var mean
mean=((sum_fiui/sum_freq)*class_int)+assumed_m
print("First interval: ",uper1)
print("-",low1)
print("")
print("Frequency: ",freq1)
print("")
print("Second interval: ",uper2)
print("-",low2)
print("")
print("Frequency: ",freq2)
print("")
print("Third interval: ",uper3)
print("-",low3)
print("")
print("Frequency: ",freq3)
print("")
print("Fourth interval: ",uper4)
print("-",low4)
print("")
print("Frequency: ",freq5)
print("")
print("Fifth interval: ",uper5)
print("-",low5)
print("")
print("Frequency: ",freq5)
print("")
print("Assumed mean value: ",assumed_m)
print("")
print("Therefore, the mean daily expenditure on food is: Rs",mean)
print("")
