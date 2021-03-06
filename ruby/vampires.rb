puts "How many employees will be processed?"
employee_number = gets.chomp.to_i
until employee_number == 0

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
	
	# Condition 1: If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
	
	if correct_age == true && (garlic_bread == "y" || health_insurance == "y")
		vampire_status = "probably not"
	else
		#do nothing
	end
	
	# Condition 2: If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
	
	if correct_age == false && (garlic_bread == "n" || health_insurance == "n")
		vampire_status = "probably"
	else
		#do nothing
	end
	
	# Condition 3: If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	
	if correct_age == false && garlic_bread == "n" && health_insurance == "n"
		vampire_status = "almost certainly"
	else
		#do nothing
	end
	
	# Condition 4: Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	
	
	if vampire_name == true
		vampire_status = "definitely"
	else
		#do nothing
	end	
	
	#add allergy loop
	
		puts "Do you have any allergies? Please enter them one at a time. Type 'done' when finished."
			allergy = nil
		while allergy != "sunshine"
			allergy = gets.chomp
			if allergy == "sunshine"
				vampire_status = "probably"
				break
			elsif allergy == "done"
				break
			end
		end

	# check results
	
	case vampire_status
	when "definitely"
		puts "Definitely a vampire."
	when "almost certainly"
		puts "Almost certainly a vampire."
	when "probably"
		puts "Probably a vampire."
	when "probably not"
		puts "Probably not a vampire."
	else
		puts "Results inconclusive."
	end


employee_number -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."