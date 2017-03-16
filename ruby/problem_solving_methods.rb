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

p fib(20)
p fib(100).last == 218922995834555169026

=end 


#Testing bubble sort method
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

test = [5, 2, 8, 10, 34, 23, 3, 6]

p bubble_sort(test)

 

