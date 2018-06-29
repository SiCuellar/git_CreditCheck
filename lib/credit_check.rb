# card_number = "4929735477250543"

require "pry"

class CreditCheck
  def initialize
  end

  def cardnum_int(card_number)
    @array_cardnum = card_number.chars
    @array_cardnum_int = []
    @array_cardnum.each do |number|
      @array_cardnum_int << number.to_i
    end
  end



  def cardnum_double
    @array_double = []
    @array_cardnum_int.each.with_index do |digit,index|

      @array_double <<
      if index % 2 == 0
         digit * 2
      else
         digit
      end
    end
  end



  def cardnum_over_nine
    @array_product_over_nine = []
    @array_double.each do |number|
      @array_product_over_nine <<
      if number > 9
         number - 9
      else
        number
      end
    end
  end


  def cardnum_sum
     @array_sum = @array_product_over_nine.sum
    # p @array_sum
  end


  def cardnum_validation
    if @array_sum % 10 == 0
      puts "The number #{@array_cardnum_int.join} is Valid"
      return true
    else
      puts "The number #{@array_cardnum_int.join} is Not Valid"
      return false
    end
  end


  def valid_number?(card_number)
    cardnum_int(card_number)
    cardnum_double
    cardnum_over_nine
    cardnum_sum
    cardnum_validation
  end


  def validation_output?(card_number)
    cardnum_int(card_number)
    cardnum_double
    cardnum_over_nine
    cardnum_sum
    cardnum_validation
  end

end


# credit_check = CreditCheck.new
# credit_check.validation_output?("5541801923795240")
# credit_check.valid_number?("5541801923795240")
