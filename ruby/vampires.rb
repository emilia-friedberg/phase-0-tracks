puts "What is your name?"
name = gets.chomp

#testing suspicious names
if name == "Drake Cula"
	vampire_name = true
elsif name == "Tu Fang"
	vampire_name = true
else
	vampire_name = false
end


puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_of_birth = gets.chomp.to_i

# defining correct-age boolean variable

years_living = 2016 - year_of_birth

if years_living == age
	correct_age = true
else
	correct_age = false
end


puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp


# creating vampire detector method

if correct_age == true && (garlic_bread == "y" || health_insurance == "y")
	vampire_result = "prob_not"
elsif correct_age == false && (garlic_bread == "n" || health_insurance == "n")
	vampire_result = "prob"
elsif correct_age == false && garlic_bread == "n" && health_insurance == "n"
	vampire_result = "almost_certainly"
elsif vampire_name == true
	vampire_result = "definitely"
else
	vampire_result = "inconclusive"
end

def vampire_detector(vampire_result)
	if vampire_result == "definitely"
		puts "Definitely a vampire."
	elsif vampire_result == "almost_certainly"
		puts "Almost certainly a vampire."
	elsif vampire_result == "prob"
		puts "Probably a vampire."
	elsif vampire_result == "prob_not"
		puts "Probably not a vampire."
	elsif vampire_result == "inconclusive"
		puts "Results inconclusive."
	else
		puts "Error"
	end
end

vampire_detector(vampire_result)