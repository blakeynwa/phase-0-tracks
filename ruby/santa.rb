class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def santaage
    age = 0
  end
  
  def reindeer
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
                "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

end

santa = Santa.new("straight", "white")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
puts santa.reindeer