require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first and second stores from the database
@store1 = Store.find(1)
@store2 = Store.find(2)

# Update the first store (e.g., change its name)
@store1.update(name: "Burnaby Central")

puts "Updated store name: #{@store1.name}"