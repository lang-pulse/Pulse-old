~Soumya
var application_money_tot = 2700000
print("Total money recieved by application = ", application_money_tot)
print("")
var per_share_app = 30
print("Application money per share = ", per_share_app)
print("")
var no_of_share_application = application_money_tot / per_share_app
print("no of shares for app = ", no_of_share_application)
print("")
var invite_share_company = 75000
print("Share apps invited by the company = ", invite_share_company)
print("")
var over_sub_scrip_shares = no_of_share_application - invite_share_company
print("Since no of shares applied by the company far exceeds the no of shares offered")
print("It is a case of oversubscription of shares")
print("Oversubscription value = ", over_sub_scrip_shares)
print("")
print("The alternatives are stated as follows:                    ")
print("1. By rejecting the excess applications and alloting only ", invite_share_company)
print(" of the shares")
print("2. By making allotment to the ", no_of_share_application)
print(" shares applicants on a proportionate or pro-rata basis")
print("3. By making allotment to some on pro-rata and rejecting some applicants.")
