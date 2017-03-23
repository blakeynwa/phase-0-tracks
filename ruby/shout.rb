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

