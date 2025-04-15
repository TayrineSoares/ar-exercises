require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Exercise 1: Create 3 stores
# Use Active Record's create class method multiple times to create 3 stores in the database. 


# Creating 3 stores using Active Record
Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output the number of stores to ensure there are 3 in the database
puts "Total stores: #{Store.count}"