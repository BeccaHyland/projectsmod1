# This is my Class for Project 1
#5541808923795240 valid test number
class CreditCheck

  def initialize(card_number)
    @card_number = card_number
    #create empty arrays for all upcoming methods here...or wait until method?
    #OLD CODE @reverse_card_num = []
    @doubles = []
    @smaller_doubles = []
    @sum = 5
    @remainder = 5 #value here doesn't matter (right?), will change later
    @result = 0
  end
  #OK now call methods inside other methods
  # make all the characters their own element in an array and reverse the order
# double only every other digit starting on the right side
#use a .each with a block and block variable - see map ex from lesson
  def reverse_then_double_odd_indexes
    #OLD CODE @reverse_card_num =
    @card_number = @card_number.digits
    #the output is a reversed ARRAY
    @card_number.each.with_index do |digit, index|
        if index.odd?
            @doubles << digit * 2
          else
            @doubles << digit
            #Now the reversed array has become an array of doubles
          end
        end
      @card_number = @doubles
      end

  def add_chars_of_doubles_over_9_then_sum_all #add arg directly here?
    @card_number = @card_number.reverse_then_double_odd_indexes
    @card_number.each.with_index do |digit, index|
      if digit > 9
        digit = digit.to_s.chars
        first_char = 0
        first_char = digit[0]
        second_char = 0
        second_char = digit[1]
        digit = first_char.to_i + second_char.to_i
        @smaller_doubles << digit
      else
        @smaller_doubles << digit
      end
    end
    @card_number = @smaller_doubles
  end
#STUCK HERE: error:
  def sum_of_all_doubles_in_array(card_number)#add arg directly here?
    @card_number.add_chars_of_doubles_over_9_then_sum_all #error undefined method
    @sum = @card_number.sum
  end
# # Divide the sum by 10
# # if the result is zero, print "The number is valid!"
# # if it is not zero, print "The number is invalid."
def valid_number?(card_number)
  #need to put the other methods in here!!! HAha...
  @sum = sum_of_all_doubles_in_array
#needs to return (print?) a boolean
 @remainder = @sum % 10
 @result = @remainder.equal? 0
 puts @result
end

 def validation_output(card_number)
   #need to put the other methods in here!
   if @sum % 10 == 0
     puts "The number #{card_number}is valid!"
   else
     puts "The number #{card_number}is invalid."
   end
 end

end #this ends the CLASS
# print "Please enter your card number with no spaces here: > "
# card_number = gets.chomp.to_i

credit_check = CreditCheck.new(5541801923795240)
#credit_check = CreditCheck.new(5541808923795240)
credit_check.valid_number?(5541801923795240)
#credit_check.valid_number?(5541808923795240)
