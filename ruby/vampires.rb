wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = true
currentyear = 2017

puts "How many employees will be processed at this time?"
  employeesnumber = gets.chomp.to_i

until employeesnumber == 0
  employeesnumber = employeesnumber - 1
  puts "What is your name?"
    name = gets.chomp
  puts "How old are you?"
    age = gets.chomp.to_i
  puts "What year were you born?"
    ageyear = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
    garlic = gets.chomp
  puts "Would you like to enroll in the company's health insurance? (yes or no)"
    insurance = gets.chomp
  if 
    name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  elsif
    (ageyear != currentyear - age) && (garlic == "yes" || insurance == "yes")
    puts "Probably a vampire"
  elsif 
    (ageyear != currentyear - age) && (garlic == "no" && insurance == "no")
    puts "Almost certainly a vampire"
  elsif 
    (ageyear == currentyear - age) && (garlic == "yes" || insurance == "yes")
    puts "Probably not a vampire"
  else
    puts "Results Inconclusive"
  end
end











