~Siddhartha
var hour_duty = input("Enter number of duty hours: ", "i")
var amount_paid
if(hour_duty >= 1 and hour_duty <= 8):
	amount_paid = 100
else:
	if(hour_duty >= 9 and hour_duty <= 12):
		amount_paid = 100 + (hour_duty - 8) * 20
	else:
		if(hour_duty >= 13 and hour_duty <= 16):
			amount_paid = 180 + (hour_duty - 12) * 40
		else:
			if(hour_duty >= 17 and hour_duty <= 20):
				amount_paid = 340 + (hour_duty - 16) * 60
			else:
				if(hour_duty >= 21 and hour_duty <= 24):
					amount_paid = 580 + (hour_duty - 20) * 80
print("Amount incurred by worker = ", amount_paid)
