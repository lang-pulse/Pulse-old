~Srivatsan
var fo_ob
var fe_ey
var di_d
var d1_d
var v2_v
var u2_u
fo_ob=2
fe_ey=6.25
di_d=15
d1_d=25
v2_v=-25
u2_u=-(fe_ey*-v2_v)/(fe_ey-v2_v)
var v1_v
v1_v=u2_u+di_d
print("Image distance for the objective lens")
print(v1_v)
print("cm")
var f1_f
f1_f=2
var u1_u
u1_u=(f1_f*v1_v)/(f1_f+v1_v)
print("u1 is")
print(u1_u)
var m_M
m_M=(v1_v/u1_u)*(1+(d1_d/fe_ey))
print("The magnifying power of a compound microscope is")
print(m_M)
