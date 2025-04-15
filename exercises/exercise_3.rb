require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Load the third store
@store3 = Store.find(3)

# Delete it from the database
@store3.destroy

# Output the current number of stores to confirm
puts "Number of stores remaining: #{Store.count}"