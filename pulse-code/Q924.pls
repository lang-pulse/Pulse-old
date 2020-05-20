~Siddhartha
var original_set = "abcdefghijklmnopqrstuvwxyz"
var new_set = "qwertyuiopasdfghjklzxcvbnm"
var str_encoded = "lorriqkziq"
var i_encoded = 0
var j_encoded = 0
var current_char_encoded = ""
while((str_encoded % i_encoded) != "~"):
	j_encoded = 0
	current_char_encoded = (str_encoded % i_encoded)
	while((new_set % j_encoded) != current_char_encoded):
		j_encoded = j_encoded + 1
	print((original_set % j_encoded), "")
	i_encoded = i_encoded + 1
