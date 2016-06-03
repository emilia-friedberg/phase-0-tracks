def llama_mood
  mood_today = "cheerful"
  mood_yesterday = "bummed out"
  puts "Let's check on our llama."
  yield(mood_today, mood_yesterday)
end

llama_mood { |mood_today, mood_yesterday| puts "It looks like our llama is #{mood_today} today! She was #{mood_yesterday} yesteday. Must be the new food." }