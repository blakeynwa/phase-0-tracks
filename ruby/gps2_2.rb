# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Get user input - list (use driver code)
  # set default quantity. How many items in the list  .max
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # Turn array into a hash - list item: Key, quantity: value
# output: Hash

# Method to remove an item from the list
# input: hash[:key]
# steps: 
  # select item to delete 
# output: hash without deleted item

# Method to update the quantity of an item
# input: updated hash
# steps: hash[:item] = 'new item'
# output: hash withou updated item

# Method to print a list and make it look pretty
# input: hash. (print)
# steps:
  # access specific keys and values from the hash and print
# output: printed items





def user_list(item)
  grocery_list = item.split
  quantity_list = {}
  grocery_list.each do |item|
    quantity_list[item] = 1 
  end
  quantity_list
end

grocery_items = user_list("Carrots Potatoes Milk")

def item_add(list, item, quantity)
  list[item] = quantity
  list
end

def item_delete(list, item)
  list.delete(item)
  list
end

def item_updated(list, item, quantity)
  list[item] = quantity
  list
end

item_add(grocery_items, "Lemonade", 2)
item_add(grocery_items, "Tomatoes", 3)
item_add(grocery_items, "Onions", 1)
item_add(grocery_items, "Ice Cream", 4)

item_delete(grocery_items, "Lemonade")

item_updated(grocery_items, "Ice Cream", 1)

puts "Here's your grocery list:"
grocery_items.each do |item, quantity|
  puts "#{item}, #{quantity}"
end

=begin
  
What did you learn about pseudocode from working on this challenge?
I first thought it would be a good idea to go through and update the pseudo
code as we went along, but now I'm seeing it's a much better idea to have
detailed pseudo code to read through as you start to actually code. 
Having detailed pseudo code will lead to more functional actual code.

What are the tradeoffs of using arrays and hashes for this challenge?
At first we were going to use an array, but then realized it would be 
pretty difficult to access both the items and the quantities. Using an 
array allowed us to use the items as 'keys' and the quantities as 'values', 
which made it much easier to access and update the various elements. 

What does a method return?
A method returns the result of the last code in the method. 

What kind of things can you pass into methods as arguments?
You can pass strings, integers, arrays/hashes

How can you pass information between methods?
As stated at the start of this challenge, one way we could have done this
was with classes. However, we performed this in this challenge by using 
the return of previous methods as the argument for new methods. For example, 
we defined a method user_list first, which populated a list of grocery items
with a default quantity of 1. The return of that method was a list, which we 
used in future methods such as item_add(list, item, quantity). This allowed
us to use the list populated from user_list in all the other methods we
created. 

What concepts were solidified in this challenge, and what concepts are still confusing?
Passing information from one method to another was cleared up. It's still
a confusing topic since so much of this information is new to me, but I feel
more confident on passing information from one method to the other moving forward.
It was also nice having additional practice with hashes/arrays, but I definitely
need continued practice to fully wrap my brain around data structures. 
  
end


  
