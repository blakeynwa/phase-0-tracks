=begin

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do 
      puts "Woof!"
    end
  end

  def rollover
    puts "*rollsover*"
  end

  def dog_years(int)
    puts int * 7
  end

  def shake
    puts "*extends paw to shake*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end


end

Puppy.new.fetch("toy")
Puppy.new.speak(3)
Puppy.new.rollover
Puppy.new.dog_years(7)
Puppy.new.shake

=end

