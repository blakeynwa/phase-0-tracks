=begin 
Here's the code from the early releases in 6.4:

module Shout
  def self.yell_angrily(words)
    puts words + "!!!" + ":("
  end

  def self.yell_happily(words)
    puts words.upcase + "!!!" + ";D"
  end

end

Shout.yell_happily("yay!")
Shout.yell_angrily("NO")
=end 

module Shout
  def yell_angrily(words)
    puts words + "!!!" + ":("
  end

  def yell_happily(words)
    puts words.upcase + "!!!" + ";D"
  end

end

class Person
  include Shout
end

class Dragon
  include Shout
end

person = Person.new
person.yell_angrily("nope")
person.yell_happily("yay")

dragon = Dragon.new
dragon.yell_happily("woop")
dragon.yell_angrily("ugh")
