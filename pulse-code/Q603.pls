~Barath
var number_vowels=5
var num_vow_store=number_vowels
var number_consonants=21
var num_con_store=number_consonants
var req_vowels=input("Enter the number of required vowels: ","i")
var req_vow_store=req_vowels
var req_consonants=input("Enter the number of required consonants: ","i")
var req_con_store=req_consonants
var string_length=req_vowels+req_consonants
var string_store=string_length
var fac_vow1=1
var diff_vowel=number_vowels-req_vowels
while(number_vowels!=0):
	fac_vow1=fac_vow1*number_vowels
	number_vowels=number_vowels-1
var fac_vow2=1
while(req_vowels!=0):
	fac_vow2=fac_vow2*req_vowels
	req_vowels=req_vowels-1
var fac_vow3=1
while(diff_vowel!=0):
	fac_vow3=fac_vow3*diff_vowel
	diff_vowel=diff_vowel-1
var vow_selec=fac_vow1/(fac_vow2*fac_vow3)
var fac_con1=1
var diff_con=number_consonants-req_consonants
while(number_consonants!=0):
	fac_con1=fac_con1*number_consonants
	number_consonants=number_consonants-1
var fac_con2=1
while(req_consonants!=0):
	fac_con2=fac_con2*req_consonants
	req_consonants=req_consonants-1
var fac_con3=1
while(diff_con!=0):
	fac_con3=fac_con3*diff_con
	diff_con=diff_con-1
var con_selec=fac_con1/(fac_con2*fac_con3)
var fac_string=1
while(string_length!=0):
	fac_string=fac_string*string_length
	string_length=string_length-1
var num_pos_words
num_pos_words=con_selec*vow_selec*fac_string
print("")
print("The number of consonants: ",num_con_store)
print("")
print("The number of vowels: ",num_vow_store)
print("")
print("The length of the required string is: ",string_store)
print("")
print("The required number of vowels: ",req_vow_store)
print("")
print("The required number of consonants: ",req_con_store)
print("")
print("")
print("Therefore, the total number of words that can be formed is: ",num_pos_words)
print("")
