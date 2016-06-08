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