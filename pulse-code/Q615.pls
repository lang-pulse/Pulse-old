~ Harishankar
var mass_Carbondioxide = 3.38
var mass_water = 0.690
var volume_welding_gas_at_STP = 10.0
var mass_welding_gas_at_STP = 11.6
var molar_mass_welding_gas
var molecular_formula
var mass_carbon = (12/44) * mass_Carbondioxide
var mass_hydrogen = (2/18) * mass_water
var percentage_carbon = mass_carbon /(mass_carbon +mass_hydrogen) * 100
var percentage_hydrogen = mass_hydrogen /(mass_carbon +mass_hydrogen) * 100
var no_of_moles_of_carbon = percentage_carbon/12
var no_of_moles_of_hydrogen = percentage_hydrogen/1
var empirical_formula = "CH"
print(" the empirical formula of welding gas:")
print(empirical_formula)
molar_mass_welding_gas =  (mass_welding_gas_at_STP/volume_welding_gas_at_STP) * 22.4
print(" Molar mass of welding gas is:")
print(molar_mass_welding_gas)
var empirical_formula_mass = 12+ 1
var n = molar_mass_welding_gas / empirical_formula_mass
molecular_formula = "C2H2"
print("The molecular formula of gas:") 
print(molecular_formula)
