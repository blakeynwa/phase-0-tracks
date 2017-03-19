#To start, request user input for first and last name, then swap the names
#There are a number of ways to do this, I decided to use an array
#rotate method, that takes the index number given as count and 
#returns that index as the first in the array.

def nameswap(first_name, last_name)
  array = [first_name, last_name]
  new_array = array.rotate!(count = 1)
end