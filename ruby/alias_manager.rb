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