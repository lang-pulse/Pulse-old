~Barath
var parrot_spd=-5
var train_spd=10
var rel_spd
var train_length=150
var time_parrot
rel_spd=train_spd-parrot_spd
time_parrot=train_length/rel_spd
print("The speed of the train is: ",train_spd)
print(" mps")
print("The speed of the parrot is: ",parrot_spd)
print(" mps")
print("Therefore, the time taken by the parrot to cross the train is: ",time_parrot)
print(" s")
