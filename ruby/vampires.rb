puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_of_birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp

# defining correct-age boolean variable

years_living = 2016 - year_of_birth

if years_living == age
	correct_age = true
else
	correct_age = false
end

# creating vampire detector method

def vampire_detector(name, correct_age, garlic_bread, health_insurance)
	if correct_age == true && (garlic_bread == "y" || health_insurance == "y")
		puts "Probably not a vampire."
	elsif correct_age == false && (garlic_bread == "n" || health_insurance == "n")
		puts "Probably a vampire."
	elsif correct_age == false && garlic_bread == "n" && health_insurance == "n"
		puts ""
	else
		puts "Not done"
	end
end

vampire_detector(name, correct_age, garlic_bread, health_insurance)