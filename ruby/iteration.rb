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