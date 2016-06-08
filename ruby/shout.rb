=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end

end

#driver code
p Shout.yell_angrily("This is confusing")
p Shout.yell_happily("But I have faith that it will make sense soon")
=end

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :D"
  end

end

class Mothers
  include Shout
end

class Drivers
  include Shout
end

#driver code
mother = Mothers.new
driver = Drivers.new

p mother.yell_angrily("Call me sometime")
p mother.yell_happily("You're coming home")

p driver.yell_angrily("Use your turn signals")
p driver.yell_happily("I didn't get pulled over for going twenty over")