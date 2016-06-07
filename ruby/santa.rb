class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
end

# driver code

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("double fudge")

santas = []
genders = ["male", "female", "agender", "genderqueer", "gender fluid", "other"]
ethnicities = ["black", "white", "Hispanic", "Asian", "Middle-Eastern", "other"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas << Santa.new("female", "Lithuanian")
santas << Santa.new("other", "Martian")
santas << Santa.new("gender fluid", "Dominican")

p santas