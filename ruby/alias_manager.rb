# change every vowel to the next vowel, and every consonant to the next consonant
  # split full name into first and last names
  # for each letter in the first name, check if it is a vowel or a consonant by seeing if it is included in the array of vowels or consonants
    # if it is a vowel, find its index in the list of vowels, then reassign it to the value of the next index in the list
    # if it is a consonant, find its index in the list of consonants, then reassign it to the value of the next consonant in the list of consonants
    # rejoin letters of name into a string, and capitalize the first letter
  # repeat above steps for last name
  # rejoin first and last name in reverse order

def alias_creator(full_name)
  full_name = full_name.downcase
  name = full_name.split(' ').to_a
  first_name = name[0]
  last_name = name[1]
  first_name_letters = first_name.split('')
  last_name_letters = last_name.split('')
  vowels = ["a", "e", "i", "o", "u", "a"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "b"]
  
  first_name_letters.map! do |letter|
    if vowels.include?(letter)
      letter_index = vowels.index(letter)
      new_letter_index = letter_index + 1
      letter = vowels[new_letter_index]
    elsif consonants.include?(letter)
      letter_index = consonants.index(letter)
      new_letter_index = letter_index + 1
      letter = consonants[new_letter_index]
    end
  end
  new_first_name = first_name_letters.join('').capitalize
  
  last_name_letters.map! do |letter|
    if vowels.include?(letter)
      letter_index = vowels.index(letter)
      new_letter_index = letter_index + 1
      letter = vowels[new_letter_index]
    elsif consonants.include?(letter)
      letter_index = consonants.index(letter)
      new_letter_index = letter_index + 1
      letter = consonants[new_letter_index]
    end
  end
  new_last_name = last_name_letters.join('').capitalize

  new_name = new_last_name + " " + new_first_name
  return new_name
    
end
  
# Provide a user interface that lets a user enter a name and get a fake name back. 

puts "Welcome to the Alias Creator!"
puts "Please enter your first and last name."
name = gets.chomp
alias_manager = {}
name_symbol = name.intern
new_name = alias_creator(name)
alias_manager[name_symbol] = new_name
puts "Thank you! Your alias is #{new_name}."
puts "Enter another name, or type 'quit'."

#  Let the user do this repeatedly until they decide to quit by typing 'quit'.

begin
  name = gets.chomp
  if name == "quit"
    break
  else
    name_symbol = name.intern
    new_name = alias_creator(name)
    alias_manager[name_symbol] = new_name
    puts "Thank you! Your alias is #{new_name}."
    puts "Enter another name, or type 'quit'."
  end
end until name == 'quit'

alias_manager.each do |name_symbol, new_name|
  puts "#{new_name} is really #{name_symbol}."
end