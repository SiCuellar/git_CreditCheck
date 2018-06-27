card_number = "4929735477250543"

# Your Luhn Algorithm Here

array_cardnum = card_number.chars


array_cardnum.map! do |number|
  number.to_i
end






array_cardnum.index do |index|
  if index % 2 == 0
    array_cardnum == index * 2
end










# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
