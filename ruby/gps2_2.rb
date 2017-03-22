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




def list(item)
  grocery_list = [item.split]
  updated_list = grocery_list.flatten
  list_quantity = updated_list.map {|item, quantity| {items: item, quantity: 1}}
end

mylist = list("Milk Apples Carrots Bananas Oranges")

def additem(list, item, quantity)
  emptyhash = {}
  emptyhash[:items] = item
  emptyhash[:quantity] = quantity
  list << emptyhash
  puts list
end

additem(mylist, "Apricots", "5")


