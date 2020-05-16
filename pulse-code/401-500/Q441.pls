~KAUSTUV
var mrp = 12000
var disc1 = 30/100
var gst = 18
var disc2 = disc1*mrp
var sell_price = mrp-disc2
var cgst = 9/100*sell_price
var sgst = 9/100*sell_price
var igst = 0
var amount_bill = sell_price+cgst+sgst
print(disc2)
print(sell_price)
print(cgst)
print(sgst)
print(igst)
print(amount_bill)
