require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Create employees for your stores:

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 45)

@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)
@store2.employees.create(first_name: "Tom", last_name: "Brown", hourly_rate: 40)

# Check how many employees each store has:
puts @store1.employees.count  # Should show 3
puts @store2.employees.count  # Should show 2