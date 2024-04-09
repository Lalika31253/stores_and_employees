require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1) # Retrieve store with ID 1 from the database
@store2 = Store.find_by(id: 2)

puts @store1.inspect #print all object

@store1.update(name: "NewName") #update name

puts @store1.inspect




