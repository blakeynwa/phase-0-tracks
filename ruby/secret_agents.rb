# figure out the index of the letter and increase the index by 1 each loop
def encrypt (string)
  new_word = ""
  index = 0
  
  while index < string.length
    if string[index] != " "
      new_word += string[index].next
    else
      new_word << " "
    end
    index += 1
  end
  
  new_word
end


