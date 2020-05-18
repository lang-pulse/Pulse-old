~KAUSTUV
var num_1s=3
var num_5s=2
var num_10s=2
var num_20s=4
var total_wallet=num_1s+num_5s+num_10s+num_20s
var prob_25s
prob_25s=((num_5s/total_wallet)*(num_20s/(total_wallet-1)))+((num_20s/total_wallet)*(num_5s/(total_wallet-1)))
print(prob_25s)
