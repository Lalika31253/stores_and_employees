require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#total revenue for the entire company (all stores)
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company is #{total_revenue}"

#average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores is #{average_revenue}"

#stores that are generating $1M or more in annual sales
mill_and_more = Store.where("annual_revenue > ?", 1000000).count
puts "There are #{mill_and_more} stores that are generating $1M or more in annual sales."