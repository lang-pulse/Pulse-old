~Pranshul
var String_1 = "ABCDE"
var String_2 = "BCDEFGH"
var len_1 = 0
var len_2 = 0
var _i = 0
var _j = 0
var temp = "a"
var flag = 1
while((String_1 % len_1)!="~"):
	len_1 = len_1 + 1
while((String_2 % len_2)!="~"):
	len_2 = len_2 + 1
while(_i<len_1):
	_j = 0
	flag = 1
	while(_j<len_2):
		temp = String_1 % _i
		if((String_2 % _j) == temp):
			flag = 0
		_j = _j+1
	if(flag == 1):
		print((String_1 % _i))
	_i = _i+1
while(_i < len_2):
	_j = 0
	flag = 0
	while(_j < len_1):
		temp = String_2 % _i
		if((String_1 % _j) ==  temp):
			flag = 1
		_j = _j+1
	if(flag == 0):
		print((String_2 % _i))
	_i = _i+1
