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




  
