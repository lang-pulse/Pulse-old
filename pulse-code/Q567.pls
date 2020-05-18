~KAUSTUV
var E1_tails = 5/3
var no_flips = 1/2^5
var prob_E1_tails = E1_tails*no_flips
var prob_E2 = 1/2^2
var no_E1 = 1/2^3
var no1_E2 = 1/2^2
var prob_E1_and_E2 = 3*no_E1*no1_E2
var no2_E1 = 1/2^2
var no3_E3 = 1/2^3
var prob_E1_and_E3 = no2_E1*no3_E3
var no4_E2_and_E3 = 1/2^4
var prob_E2_and_E3 = no4_E2_and_E3
var e1 = 1/2^2
var e2 = 1/2^3
var prob_E1_and_E2_and_E3 = e1*e2
var req_prob = 10/32+9/4-prob_E1_and_E2-prob_E1_and_E3-prob_E2_and_E3+prob_E1_and_E3 
print(req_prob)
