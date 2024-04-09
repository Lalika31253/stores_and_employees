require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

#create 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "There are #{Store.count} stores"

#fetch only those stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

#Loop through each of these stores and output their name and annual revenue on each line
@mens_stores.each do |store|
  puts "Store: #{store.name}, annual revenue: #{store.annual_revenue}"
end


#fetch stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_stores.each do |store|
  puts "Store: #{store.name}, annual revenue: #{store.annual_revenue}"
end