~Barath
var num_players=input("Enter the number of players to be chosen from: ","i")
var num_bowlers=input("Enter the number of bowlers: ","i")
var bowl_st=num_bowlers
var team_str=11
var req_bowlers=4
var req_st=req_bowlers
var rem_player=num_players-num_bowlers
var other_rem=team_str-req_bowlers
var diff_play=rem_player-other_rem
var diff_bowl=num_bowlers-req_bowlers
var fact_bowl1=1
while(num_bowlers!=0):
	fact_bowl1=fact_bowl1*num_bowlers
	num_bowlers=num_bowlers-1
var fact_bowl2=1
while(req_bowlers!=0):
	fact_bowl2=fact_bowl2*req_bowlers
	req_bowlers=req_bowlers-1
var fact_bowl3=1
while(diff_bowl!=0):
	fact_bowl3=fact_bowl3*diff_bowl
	diff_bowl=diff_bowl-1
var amt_bowl=fact_bowl1/(fact_bowl2*fact_bowl3)
var fact_play1=1
while(rem_player!=0):
	fact_play1=fact_play1*rem_player
	rem_player=rem_player-1
var fact_play2=1
while(other_rem!=0):
	fact_play2=fact_play2*other_rem
	other_rem=other_rem-1
var fact_play3=1
while(diff_play!=0):
	fact_play3=fact_play3*diff_play
	diff_play=diff_play-1
var amt_rem=fact_play1/(fact_play2*fact_play3)
var num_play=amt_rem*amt_bowl
print("")
print("The number of players: ",num_players)
print("")
print("The number of bowlers in the team: ",bowl_st)
print("")
print("The number of players required for the team: ",team_str)
print("")
print("The number of bowlers required for the team: ",req_st)
print("")
print("")
print("Therefore, the number of ways a cricket team can be chosen is: ",num_play)
print("")
