# figure out the index of the letter and increase the index by 1 each loop


def encrypt(string)
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

def decrypt(encrypted_word)
alphabet = "abcdefghijklmnopqrstuvwxyz "

word = ""
index  = 0
new_word = encrypted_word.split("")
  
  while index < encrypted_word.length
    alphabet_indexes = alphabet.index(new_word[index])
    
    alphabet_indexes
      if alphabet_indexes != 26
        word += alphabet[alphabet_indexes -1]
      else
        word << " "
      end
      index += 1
  end
  word 
end

puts "Hey there, would you like to encrypt or decrypt?"
  user_response = gets.chomp

#if statement to control proper method based on encryption or decryption
  if user_response == "encrypt"
    puts "What would you like to encrypt?"
    encrypted_word = gets.chomp
    encrypt("#{encrypted_word}")
  elsif user_response == "decrypt"
    puts "What would you like to decrypt?"
    decrypted_word = gets.chomp
    decrypt("#{decrypted_word}")
  end
    

# Successfully can call nested method because both data types used are strings

