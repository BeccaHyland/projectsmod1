# Get the number from the user
puts "What is your 16-digit card number? Please enter it with no spaces here: > "
#5541808923795240
card_number = gets.chomp.to_i
# make all the characters their own element in an array and reverse the order
reverse_card_num = card_number.digits
#create an empty array for the upcoming doubles (every other doubled) array
doubles = []
# double only every other digit starting on the right side
#use a .each with a block and vlock variable - see map ex from lesson
reverse_card_num.each.with_index do |digit, index|
  if index.odd?
    doubles << digit * 2
  else
    doubles << digit
  end
end
#create new array to store version with double-digit numbers changed so the are instead the
corrected_doubles = []
doubles.each.with_index do |digit, index|
  if digit > 9
    digit = digit.to_s.chars
    first_char = 0
    first_char = digit[0]
    second_char = 0
    second_char = digit[1]
    digit = first_char.to_i + second_char.to_i
    corrected_doubles << digit
  else
    corrected_doubles << digit
  end
end
# started other way but it will not work
#     digit = digit.to_s
#     digit = digit[0]
#     corrected_doubles << digit[0] + digit[1]

#p corrected_doubles -- GOOD ARRAY!!! :)
sum = corrected_doubles.sum
#p (result: sum = 70)

# # Divide the sum by 10

if sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid."
end

# # if the result is zero, print "The number is valid!"
# # if it is not zero, print "The number is invalid."
