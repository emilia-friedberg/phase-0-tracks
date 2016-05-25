puts "Hamsters Name:"
hamster_name = gets.chomp

puts "Volume Level (1-10)"
volume_level = gets.chomp.to_f

puts "Fur Color"
fur_color = gets.chomp

puts "Good Candidate for adoption (yes or no)"
candidacy = gets.chomp

if candidacy == "yes"
	good_candidate = true
else
	good_candidate = false
end

puts "Estimated Age"
est_age = gets.chomp

def estimated_age(est_age)
 if est_age == ""
 	est_age = "nil"
 else est_age = est_age.to_f
end
end

puts "Hamster Name: #{hamster_name}"
puts "Volume Level: #{volume_level}"
puts "Fur Color: #{fur_color}"
puts "Is A Good Candidate?: #{good_candidate}"
puts "Estimated Age: #{estimated_age(est_age)}"