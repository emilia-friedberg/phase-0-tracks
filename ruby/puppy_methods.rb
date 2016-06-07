class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(x)
    puts "Woof!" * x
  end
  
  def roll_over
    puts "*roll over*"
  end
  
  def dog_years(human_years)
    p human_years * 7
  end
  
  def run_in_circles
    puts "*chase tail*"
  end
    
  
end

# driver code

ruby = Puppy.new
p ruby.class
ruby.fetch("ball")

# running speak on class instance
ruby.speak(3)

# running roll_over on class instance
ruby.roll_over

ruby.dog_years(2)

ruby.run_in_circles