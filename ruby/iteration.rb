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
=end


#Release 2:

#method 2 (method that filters a data structure for only
#items that satisfy certain conditions)
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
def evennum(array)
  array.select { |num| num.even? }
end
puts evennum(array)

hash = {1 => "one",
        2 => "two",
        3 => "three",
        4 => "four"}
def selector(hash)
  hash.select {|integer, string| integer > 2}
end

puts selector(hash)

#method 4 (method that will remove items from a data structure
#until the condition in the block evaluates to false, then stops)

def lessthan(array)
  array.drop_while {|i| i < 4}
end

puts lessthan(array)

def numdrop(hash)
  hash.drop_while {|integer, string| integer < 2}
end

puts numdrop(hash)



























