# Get the number from the user
puts "What is your 16-digit card number? Please enter it with no spaces here: > "
card_number = gets.chomp.to_i
# make all the characters their own element in an array and reverse the order
rvrs_card_array = card_number.digits

# select only every other digit starting on the right side
#p (to check progress here)
odd_index_num = rvrs_card_array.select.each_with_index { |_, i| i.odd? }
# trying to choose only every other number? using index?
#p to check progress

# multiply the selected by 2
#use a .each with a block and vlock variable - see map ex from lesson
doubles = []
odd_index_num.each do |number|
  doubles << number * 2
end
#p doubles #to check progress
# For doubles greater than 9, sum the digits of the products
revised_doubles = []
doubles.each do |number|
  if number > 9
    number = number.to_s
    first_dig = "to be replaced"
    first_dig = number[0]
    first_dig = first_dig.to_i
    second_dig = "replace me too"
    second_dig = number[1]
    second_dig = second_dig.to_i
    # Maybe the below line is the problem.
    number = first_dig + second_dig
  else

  end
end
  revised_doubles << doubles
  # HMM...the below check did not wor
  # HMM...the output was 8 instances of the unchanged array named DOUBLES
  p revised_doubles
# Add all the revised doubled numbers together
# rev_doub_sum = revised_doubles.sum

# get the sum of the even index numbers
# add both those sums together
# Divide the sum by 10
# / 10
# if the result is zero, print "The number is valid!"
# if it is not zero, print "The number is invalid."
