require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask user for a store name and try to create a store with only the name
puts "Enter a store name:"
store_name = gets.chomp

new_store = Store.create(name: store_name)

if new_store.invalid?
  puts "Error(s) while creating the store:"
  new_store.errors.full_messages.each do |msg|
    puts "- #{msg}"
  end
else
  puts "Store '#{store_name}' created successfully!"
end
