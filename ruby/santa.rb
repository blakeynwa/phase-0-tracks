class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender 

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

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.push(name)
  end

end

santas = []
genders = ["female", "male", "Cisgender", "Intersex", "MTF", "Pangender", 
"Trans", "Non-binary", "Gender Fluid", "Bigender"]
ethnicities = ["N/A", "White", "Black", "Latino", "Arab", "Samoan",
   "Dutch", "French", "Korean", "Latvian"]

1000.times do |i|
  random_santas = Santa.new(genders.shuffle[rand], ethnicities.shuffle[rand])
  random_santas.age = rand(140)
  puts "This Santa is #{random_santas.age} and their gender is #{random_santas.gender}, ethnicity is #{random_santas.ethnicity}"
end


#This begins a mess of driver code to test out all of the above
=begin
p santas
santa = Santa.new("straight", "white")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.celebrate_birthday
santa.celebrate_birthday
santa.age
santa.ethnicity
santa.get_mad_at("Rudolph")
santa.gender = "Cis male"
=end
#This ends a mess of driver code 



