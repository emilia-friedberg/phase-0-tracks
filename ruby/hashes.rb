# initialize the hash

client_preferences = {}

# ask for user input

#first name
puts "First Name:"
first_name = gets.chomp
client_preferences[:first_name] = first_name

#last name
puts "Last Name:"
last_name = gets.chomp
client_preferences[:last_name] = last_name

#client age
puts "Age:"
age = gets.chomp.to_i
client_preferences[:age] = age

#number of children
puts "Number of Children:"
number_of_children = gets.chomp.to_i
client_preferences[:number_of_children] = number_of_children

p client_preferences