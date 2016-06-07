class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

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

  def celebrate_birthday
    @age = @age += 1
    # p @age
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
    # p @reindeer_ranking
  end

end

# driver code

santa = Santa.new("agender", "North Poleian")
# santa.speak
# santa.eat_milk_and_cookies("double fudge")

santas = []
genders = ["male", "female", "agender", "genderqueer", "gender fluid", "other"]
ethnicities = ["black", "white", "Hispanic", "Asian", "Middle-Eastern", "other"]

# genders.length.times do |i|
#  santas << Santa.new(genders[i], ethnicities[i])
# end

# santas << Santa.new("female", "Lithuanian")
# santas << Santa.new("other", "Martian")
# santas << Santa.new("gender fluid", "Dominican")
# santas << santa

#checking attr_reader methods for age and ethnicity
# p santa.ethnicity
# p santa.age

# santa.celebrate_birthday

# santa.get_mad_at("Vixen")

#checking attr_accessor method for gender
# santa.gender=("gender fluid")

#generating 1000 new santas with random genders and ethnicities 
santa_count = 0
until santa_count == 1000
  p Santa.new(genders.sample, ethnicities.sample)
  santa_count += 1
  p santa_count
end

#setting santa's age to random number between 0 and 140

p santa.age=rand(0..140)