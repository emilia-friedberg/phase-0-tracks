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

  # getter method for age
  def age
    @age
  end

  # getter method for ethnicity
  def ethnicity
    @ethnicity
  end

  def celebrate_birthday
    @age = @age += 1
    # p @age
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
    # p @reindeer_ranking
  end

  #setter method for gender
  def gender=(new_gender)
    @gender = new_gender
    # p @gender
  end

end

# driver code

santa = Santa.new("agender", "North Poleian")
santa.speak
santa.eat_milk_and_cookies("double fudge")

santas = []
genders = ["male", "female", "agender", "genderqueer", "gender fluid", "other"]
ethnicities = ["black", "white", "Hispanic", "Asian", "Middle-Eastern", "other"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas << Santa.new("female", "Lithuanian")
santas << Santa.new("other", "Martian")
santas << Santa.new("gender fluid", "Dominican")
santas << santa

p santas

santa.celebrate_birthday

santa.get_mad_at("Vixen")

santa.gender=("gender fluid")