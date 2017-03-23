class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
                "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def age
    puts @age
  end

  def ethnicity
    puts @ethnicity
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.push(name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end


end

santa = Santa.new("straight", "white")
santas = []
genders = ["female", "male", "Cisgender", "Intersex", "MTF", "Pangender", 
"Trans", "Non-binary", "Gender Fluid", "Bigender"]
ethnicities = ["N/A", "White", "Black", "Latino", "Arab", "Samoan",
   "Dutch", "French", "Korean", "Latvian"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

p santas

santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.celebrate_birthday
santa.celebrate_birthday
santa.age
santa.ethnicity
santa.get_mad_at("Rudolph")
santa.gender = "Cis male"

