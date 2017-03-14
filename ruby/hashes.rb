#Introduce the user/designer to the form
puts "Welcome to the designer form!"

#Create blank hash that we add to below
form = {} 

#questions prompting the user to input data into the hash
puts "Please enter your client's name"
  form[:name] = gets.chomp
puts "Age"
  form[:age] = gets.chomp
puts "Number of children"
  form[:num_of_child] = gets.chomp
puts "Decor Theme"
  form[:decor_theme] = gets.chomp

#print the form back to the user
puts form
