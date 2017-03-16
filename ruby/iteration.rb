
def dinosaurs
  puts "Dinosaurs are extinct!"
  yield("T-rex", "Pterodactyl")
end

dinosaurs { |dino1, dino2| puts "But #{dino1} and #{dino2} are really cool!"}

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



#Release 2:

#method 1 (A method that iterates through the items, 
#deleting any that meet a certain condition)

numbers = [1,3,5,7,9,10,14]

def lessthan(numbers)
numbers.delete_if { |numbers| numbers < 8 }
end

puts lessthan(numbers)

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

#method 3 (A different method that filters a data structure for 
#only items satisfying a certain condition)

grades = { "mike" => 95, "Sam" => 89, "joe" => 77, "tom" => 85}
def grade_selector(grades)
grades.select { |name, grades| grades < 86 }
end

p grade_selector(grades)

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



























