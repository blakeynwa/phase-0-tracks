=begin
def search_array(arr, int)
  idx = 0
  while idx < arr.length
    if arr[idx] == int
      return idx
    else
      nil
    idx += 1
    end
  end
end


arr = [42, 89, 23, 1]
p search_array(arr, 1)

p search_array(arr, 24)

=end

#The number given as an argument represents number of integers in array
#When calling fib method, return should be length of given argument in an
#array and fibonacci sequence of integers

def fib(int)
  initial = [0, 1]
  until initial.length == int 
    update = (initial[-2] + initial[-1])
    initial << update
  end
  return initial
end

p fib(6)




 

