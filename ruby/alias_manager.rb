# swap first and last name:
  #take full name as parameter and split it into first and last name as an array
  #reverse the order of the names in the array
  #put name back together as a string
  
def swap_name(full_name)
  name = full_name.split(' ').to_a
  reversed_name = name.reverse
  swapped_name = reversed_name.join(' ')
  p swapped_name
end

swap_name("Emilia Friedberg")

# change every vowel to the next vowel, and every consonant to the next consonant
  # for each letter, check if it is a vowel or a consonant by seeing if it is included in the array of vowels or consonants
  # if it is a vowel, find its index in the list of vowels, then reassign it to the value of the next index in the list
  # if it is a consonant, find its index in the list of consonants, then reassign it to the value of the next consonant in the list of consonants
  
  
  
def change_letters(full_name)
  full_name = full_name.downcase
  letters = full_name.split('')
  vowels = ["a", "e", "i", "o", "u", "a"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "b"]
  letters.map! do |letter|
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
  new_name = letters.join('')
end

change_letters("Emilia Friedberg")