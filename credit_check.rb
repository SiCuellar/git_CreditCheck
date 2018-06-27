card_number = "4929735477250543"

# Your Luhn Algorithm Here

array_cardnum = card_number.chars

#Must set array_cardnum into new variable otherwise, result erases after method is finished
array_cardnum_int = []
array_cardnum.each do |number|
  array_cardnum_int << number.to_i
end

# returns the int array
p array_cardnum_int


# multiply every other number by 2

array_double = []
array_cardnum_int.each.with_index do |digit,index|

  array_double <<
  if index % 2 == 0
     digit * 2
  else
     digit
  end
end

p array_double



array_product_over_nine = []
array_double.each do |number|
  array_product_over_nine <<
  if number > 9
     number - 9
  else
    number
  end
end

p array_product_over_nine



p array_product_over_nine.sum

if array_product_over_nine.sum % 10 == 0
  puts "The Credit Number is Valid"

else
  puts "The Credit Number is Not Valid"
end










# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
