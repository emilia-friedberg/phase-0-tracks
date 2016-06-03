# get user input

# name
puts "Name:"
name = gets.chomp

# client age
puts "Age:"
age = gets.chomp.to_i

# number of rooms
puts "Number of Rooms:"
number_of_rooms = gets.chomp.to_i

# pets?
puts "Do you have pets? (y/n)"
pet_answer = gets.chomp
  
  #convert pet answer to boolean
  if pet_answer = "y"
    has_pets = true
  else
    has_pets = false
  end
  
# favorite_color
puts "What is your favorite color?"
favorite_color = gets.chomp

# initialize the hash, populating with user input

client_preferences = {
  name: name,
  age: age,
  number_of_rooms: number_of_rooms,
  has_pets: has_pets,
  favorite_color: favorite_color,
}

p client_preferences
