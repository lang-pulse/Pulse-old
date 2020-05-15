~Barath
var molarity_sol=input("Enter the molarity of the methanol solution: ","d")
var req_meth_vol=input("Enter the required volume of methanol: ","d")
var density_meth=0.793
var mol_wt_meth=32
var num_mole
var meth_wt
var meth_vol
num_mole=molarity_sol*req_meth_vol
meth_wt=num_mole*mol_wt_meth
meth_wt=meth_wt/(10^3)
meth_vol=meth_wt/density_meth
print("")
print("The molarity of the methanol solution is: ",molarity_sol)
print(" M")
print("Required amount of methanol solution: ",req_meth_vol)
print(" L")
print("Density of methanol is: ",density_meth)
print(" kg/L")
print("")
print("")
print("Therefore, the volume of methanol required to make ",req_meth_vol)
print(" L of its ",molarity_sol)
print(" solution is: ",meth_vol)
print("")
