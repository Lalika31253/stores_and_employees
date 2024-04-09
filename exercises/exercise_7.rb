require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

  #Ask the user for a store name (store it in a variable)
  puts "Enter the store name: "
  store_name = gets.chomp


  #Attempt to create a store with the inputted name but leave out the other fields
  store = Store.create(name: store_name)
  if store.valid?
    puts "Store #{store_name} created."
  else
    puts "Error creating the store: #{store.errors.full_messages}!"
end


