# method that takes a block
def llama_mood
  mood_today = "cheerful"
  mood_yesterday = "bummed out"
  puts "Let's check on our llama."
  yield(mood_today, mood_yesterday)
end

llama_mood { |mood_today, mood_yesterday| puts "It looks like our llama is #{mood_today} today! She was #{mood_yesterday} yesterday. Must be the new food." }

# declaring an array

llama_names = ["Millicent", "Conrad", "Smelly", "Ethan", "Pete"]

puts "Original Names:"
p llama_names

# iterate through array with .each
llama_names.each do |llama_names|
  puts llama_names
end

puts "After .each call:"
p llama_names

puts "Original Names:"
p llama_names

# iterate through array with .map!

llama_names.map! do |llama_names|
  puts llama_names
  llama_names.upcase
end

puts "After .map! call:"
p llama_names

# declaring a hash

llama_ages = {
  Millicent: 7,
  Conrad: 3,
  Smelly: 8.5,
  Ethan: 1,
  Pete: 5
}

puts "Original Llama Ages:"
p llama_ages

# iterate through hash with .each
llama_ages.each do |llama_ages|
  puts llama_ages
end

puts "After .each call:"
p llama_ages


# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sample_array
p sample_array.reject! { |x| x>7 }

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sample_array
p sample_array.delete_if { |x| x>7 }

sample_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7
}
p sample_hash
p sample_hash.reject! { |x, y| y>3 }


sample_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7
}
p sample_hash
p sample_hash.delete_if { |x, y| y>3 }

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sample_array
p sample_array.keep_if { |x| x>7 }

sample_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7
}
p sample_hash
p sample_hash.keep_if { |x, y| y>3 }

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sample_array
p sample_array.select! { |x| x>7 }

sample_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7
}
p sample_hash
p sample_hash.select! { |x, y| y>3 }


# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sample_array
p sample_array.take_while{ |x| x<7 }

sample_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7
}
p sample_hash
p sample_hash.take_while { |x, y| y<3 }
