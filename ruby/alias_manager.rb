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
  p first_name = name[0]
  p last_name = name[1]
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
  p new_name
  
end

alias_creator("Felicia Torres")