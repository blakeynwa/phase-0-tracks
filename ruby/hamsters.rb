puts "What the hamsters name?"
  name = gets.chomp
puts "What volume from 1-10 would your prefer?"
  volume = gets.chomp.to_i
puts "What fur color?"
  color = gets.chomp
puts "Good candidate for adoption? (good/bad/mediocre)"
  cand = gets.chomp.downcase
puts "What is the estimated age?"
  age = gets.chomp
  if age.empty?
     age = nil
  else
    age = age.to_i
  end
  if age == nil
    age = "n/a"
  end

puts "The hamster results:"
puts "The hamster's name is #{name}!"
puts "The preferred volume is #{volume}."
puts "The fur color is #{color}."
puts "The hamster is a #{cand} for adoption."
puts "The estimated age is #{age}."