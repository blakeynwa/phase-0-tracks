# figure out the index of the letter and increase the index by 1 each loop

secret_word = "abc def"
new_word = ""
index = 0

while index < secret_word.length
  if secret_word[index] != " "
    new_word += secret_word[index].next
  else
    new_word << " "
  end
  index += 1
end

p new_word


