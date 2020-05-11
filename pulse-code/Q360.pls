~Barath
var asumed_mean
var up1=45
var loer1=55
var freq1=3
var up2=55
var loer2=65
var freq2=10
var up3=65
var loer3=75
var freq3=11
var up4=75
var loer4=85
var freq4=8
var up5=85
var loer5=95
var freq5=3
var class_int=up2-up1
var mark1=(up1+loer1)/2
var mark2=(up2+loer2)/2
var mark3=(up3+loer3)/2
var mark4=(up4+loer4)/2
var mark5=(up5+loer5)/2
if(freq1>freq2 and freq1>freq3 and freq1>freq4 and freq1>5):
	asumed_mean=mark1
else:
	if(freq2>freq1 and freq2>freq3 and freq2>freq4 and freq2>freq5):
		asumed_mean=mark2
	else:
		if(freq3>freq1 and freq3>freq2 and freq3>freq4 and freq3>freq5):
			asumed_mean=mark3
		else:
			if(freq4>freq1 and freq4>freq2 and freq4>freq3 and freq4>freq5):
				asumed_mean=mark4
			else:
				if(freq5>freq1 and freq5>freq2 and freq5>freq3 and freq5>freq4):
					asumed_mean=mark5
var u1=(mark1-asumed_mean)/class_int
var u2=(mark2-asumed_mean)/class_int
var u3=(mark3-asumed_mean)/class_int
var u4=(mark4-asumed_mean)/class_int
var u5=(mark5-asumed_mean)/class_int
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
mean=((sum_fu/sum_freq)*class_int)+asumed_mean
print("First interval: ",up1)
print("-",loer1)
print("")
print("Frequency: ",freq1)
print("")
print("Second interval: ",up2)
print("-",loer2)
print("")
print("Frequency: ",freq2)
print("")
print("Third interval: ",up3)
print("-",loer3)
print("")
print("Frequency: ",freq3)
print("")
print("Fourth interval: ",up4)
print("-",loer4)
print("")
print("Frequency: ",freq4)
print("")
print("Fifth interval: ",up5)
print("-",loer5)
print("")
print("Frequency: ",freq5)
print("")
print("Assumed mean value: ",asumed_mean)
print("")
print("Therefore, the mean literacy rate is: ",mean)
print("")
