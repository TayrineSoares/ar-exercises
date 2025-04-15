require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

#Create 3 more stores 
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


# Fetch stores that carry men’s apparel and assign to @mens_stores:
@mens_stores = Store.where(mens_apparel: true)
#Loop through each store and output name and revenue:
@mens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end


# Fetch stores that carry women’s apparel and generate < $1M:
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
#Loop through each store and output name and revenue:
@womens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end