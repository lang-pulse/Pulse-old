var hr=21
var min=45
var sec=12
var hrc
if(hr>12):
	hrc=hr-12
else:
	hrc=hr
print("the time in 24 hour format is:")
print(hr)
print("-")
print(min)
print("-")
print(sec)
print("the time in 12 hour format is:")
print(hrc)
print("-")
print(min)
print("-")
print(sec)
if(hr<=11):
	print("AM")
else:
	print("PM")
