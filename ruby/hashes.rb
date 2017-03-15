#Introduce the user/designer to the form
puts "Welcome to the designer form!"

#Create blank hash that we add to below
form = {} 

#questions prompting the user to input data into the hash
puts "Please enter your client's name"
  form[:name] = gets.chomp
puts "Age"
  form[:age] = gets.chomp.to_i
puts "Number of children"
  form[:num_of_child] = gets.chomp.to_i
puts "Decor Theme"
  form[:decor_theme] = gets.chomp

#print the form back to the user
puts form

#Give the user the option of updating the form
puts "Which information needs updating? (Type label name or none)"
  user_input = gets.chomp
  if user_input == "none"
    puts "Thank you!"
  elsif user_input.intern == :decor_theme || :name || :age || :num_of_child
    puts "please enter the new value"
    form[user_input.intern] = gets.chomp
  end
  
  puts form 
  

