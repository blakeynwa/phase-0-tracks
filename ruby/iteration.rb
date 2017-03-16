=begin
def dinosaurs
  puts "Dinosaurs are extinct!"
  yield("T-rex", "Pterodactyl")
end

dinosaurs { |dino1, dino2| puts "But #{dino1} and #{dino2} are really cool!"}


letters = ["a", "b", "c", "d", "e"]
new_letters = []


puts "original data:"
p letters
p new_letters

letters.each do |letter|
  new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"
end


letters = ["a", "b", "c", "d", "e"]

puts "original data:"
p letters

modified_letters = letters.map do |letter|
  puts letter
  letter.next
end
p modified_letters


puts "After .map call:"
p letters
=end

actors = ["Tom", "Brad", "Kevin"]
movies = {"Tom" => "Mission Impossible", 
          "Brad" => "Fight Club", 
          "Kevin" => "Field of Dreams"}

puts "Before:"
puts actors
puts movies





puts "After:"
actors.each do |actors|
  puts "#{actors} is a great actor!"
end

movies.each do |name, film|
  puts "#{name} is great in #{film}"
end

actors.map! do |actors|
  puts actors.reverse
end



























