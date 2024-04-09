require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#create some more employees using the create method
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Davidson", hourly_rate: 85)

@store2.employees.create(first_name: "Dana", last_name: "Roy", hourly_rate: 80)
@store2.employees.create(first_name: "Luca", last_name: "Jons", hourly_rate: 100)
