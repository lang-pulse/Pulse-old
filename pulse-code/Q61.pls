~Siddhartha
var loopiterator = 1
while(loopiterator <= 15):
	if((loopiterator%2 != 0) and (loopiterator <= 9)):
		print("* * * * * * ==================================")
	else:
		if((loopiterator%2 == 0) and (loopiterator <= 9)):
			print(" * * * * *  ==================================")
		else:
			print("==============================================")
	loopiterator = loopiterator + 1
