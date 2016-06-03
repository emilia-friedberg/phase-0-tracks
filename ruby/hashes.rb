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

# give user opportunity to revise answers
puts "Would you like to revise any of these answers?"
answer = gets.chomp

  if answer == "y" || answer == "yes"
    puts "Very well. Please type the name of the section, including any underscores, that you would like to change."
    section_changed = gets.chomp.intern
    
# make sure revised answers are the appropriate data type for questions that require integers or Booleans

      if section_changed == :age || section_changed == :number_of_rooms
        puts "Please type your new answer."
          new_answer = gets.chomp.to_i
      elsif section_changed == :has_pets
        puts "Please type your new answer."
          new_answer = gets.chomp
          if new_answer == "true"
            new_answer = true
          else
            new_answer = false
          end
      else
        puts "Please type your new answer."
          new_answer = gets.chomp
      end
    client_preferences[section_changed] = new_answer
    p client_preferences
  else
    puts "Thank you for your input! We look forward to working with you."
  end
