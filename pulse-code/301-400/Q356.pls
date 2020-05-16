~Barath
var assumed_mean
var upper1=50
var lower1=52
var freq1=15
var upper2=53
var lower2=55
var freq2=110
var upper3=56
var lower3=58
var freq3=135
var upper4=59
var lower4=61
var freq4=115
var upper5=62
var lower5=64
var freq5=25
var class_int=upper2-upper1
var mark1=(upper1+lower1)/2
var mark2=(upper2+lower2)/2
var mark3=(upper3+lower3)/2
var mark4=(upper4+lower4)/2
var mark5=(upper5+lower5)/2
if(freq1>freq2 and freq1>freq3 and freq1>freq4 and freq1>5):
	assumed_mean=mark1
else:
	if(freq2>freq1 and freq2>freq3 and freq2>freq4 and freq2>freq5):
		assumed_mean=mark2
	else:
		if(freq3>freq1 and freq3>freq2 and freq3>freq4 and freq3>freq5):
			assumed_mean=mark3
		else:
			if(freq4>freq1 and freq4>freq2 and freq4>freq3 and freq4>freq5):
				assumed_mean=mark4
			else:
				if(freq5>freq1 and freq5>freq2 and freq5>freq3 and freq5>freq4):
					assumed_mean=mark5
var u1=(mark1-assumed_mean)/class_int
var u2=(mark2-assumed_mean)/class_int
var u3=(mark3-assumed_mean)/class_int
var u4=(mark4-assumed_mean)/class_int
var u5=(mark5-assumed_mean)/class_int
var f1u1=freq1*u1
var f2u2=freq2*u2
var f3u3=freq3*u3
var f4u4=freq4*u4
var f5u5=freq5*u5
var sum_fu
sum_fu=f1u1+f2u2+f3u3+f4u4+f5u5
var sum_freq
sum_freq=freq1+freq2+freq3+freq4+freq5
var mean
mean=((sum_fu/sum_freq)*class_int)+assumed_mean
print("First interval: ",upper1)
print("-",lower1)
print("")
print("Frequency: ",freq1)
print("")
print("Second interval: ",upper2)
print("-",lower2)
print("")
print("Frequency: ",freq2)
print("")
print("Third interval: ",upper3)
print("-",lower3)
print("")
print("Frequency: ",freq3)
print("")
print("Fourth interval: ",upper4)
print("-",lower4)
print("")
print("Frequency: ",freq4)
print("")
print("Fifth interval: ",upper5)
print("-",lower5)
print("")
print("Frequency: ",freq5)
print("")
print("Assumed mean value: ",assumed_mean)
print("")
print("Therefore, the mean number of mangoes kept in the packing box is: ",mean)
print("")
