~Barath
var heaterunits=200
var fanunits=60
var bulbunits=30
var cost=1.5
var nfans=5
var nbulbs=12
var total_cost
var sum
var theaterunits
var tfanunits
var tbulbunits
theaterunits=heaterunits*24
tfanunits=fanunits*24*nfans
tbulbunits=bulbunits*24*nbulbs
sum=theaterunits+tfanunits+tbulbunits
total_cost=sum*cost
print("the units consumed by the heater in a day:")
print(theaterunits)
print("the units consumed by the fans in a day:")
print(tfanunits)
print("the units consumed by the fans in a day:")
print(tbulbunits)
print("the total electricity bill for one day in dollars is:")
print(total_cost)
