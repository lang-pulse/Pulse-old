~Barath
var conetent_h937=input("Enter the height of the conical tent: ","d")
var conetent_d937=input("Enter the diameter of the conical tent: ","d")
var conetent_dm937
var conetent_r937
var person_accomadation=input("Enter the volume accomadated by one person: ","d")
conetent_dm937=conetent_d937*10
conetent_r937=conetent_dm937/2
var vol_tent937
vol_tent937=(1/3)*3.14*conetent_h937*(conetent_r937^2)
var num_pplaccom
num_pplaccom=vol_tent937/person_accomadation
num_pplaccom=num_pplaccom*10
var last_dig937
last_dig937=num_pplaccom%10
if(last_dig937>=5):
	num_pplaccom=num_pplaccom+10
	num_pplaccom=num_pplaccom//10
else:
	num_pplaccom=num_pplaccom//10
print("")
print("The height of the conical tent is: ",conetent_h937)
print(" dm")
print("The diameter of the conical tent is: ",conetent_d937)
print(" dm")
print("The volume taken by one person is: ",person_accomadation)
print("")
print("")
print("The volume of the conical tent is: ",vol_tent937)
print(" dm.cb")
print("Therefore, the number of ppl that can be accomadated inside the conical tent is: ",num_pplaccom)
print("")
