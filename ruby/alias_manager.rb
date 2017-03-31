#Request user input for full name. Take the input and flip the string
#so the last name comes first, first last. Define "nameswap" method to achieve
#this. Within use ruby built in split method to split the string, then 
#use the built in reverse and join methods.

#Define two different methods to check the string for vowels and consonants,
#then replace the vowels and consonants with the next types of letters
#alphabetically. We would expect a consonant of "x" to return "y", and
#a vowel of "e" to return "i" after using these methods. In order to 
#account for capital letters, create a vowelscap array with only capital 
#versions of the vowels (other vowel array has only lowercase). These
#same steps apply to the consonant method. 

#Iterate over each letter using a map method and return the necessary value
#(i.e., if running the vowelchange method, if the vowel matched then 
#the next corresponding index is returned. However, if no vowels are matched,
# then the letter unchanged is returned).

#Finally, define an encrypted_name method that rejoins the individual characters
#as string. Create an empty hash called aliases, where the user input of 
#their name and encrypted name are stored. Print back the before and after
#versions once the program is told to stop running via input of "quit".

def nameswap(string)
  name = string.split
  name.reverse.join(" ")
end



def vowelchange(string)
vowels = ['a', 'e', 'i', 'o', 'u']
vowelscap = ['A', 'E', 'I', 'O', 'U']
originalname = nameswap(string).split("")
vowel_name = originalname.map do |letter|
  if vowels.include? letter
    vowels[vowels.index(letter) + 1]
  elsif vowelscap.include? letter
    vowelscap[vowelscap.index(letter) + 1]
  else
    letter
  end
end
end



def conschange(string)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  conscap = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M",
                "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  preconscheck = vowelchange(string)
  cons_name = preconscheck.map do |letter|
    if consonants.include? letter 
      consonants[consonants.index(letter) + 1]
    elsif conscap.include? letter
      conscap[conscap.index(letter) + 1]
    else
      letter
    end
  end
end

def encrypted_name(string)
  conschange(string).join("")
end

aliases = {}

loop do 
  puts "Please enter your first and last name (or type quit to stop input)"
  username = gets.chomp 
    break if username == "quit"
  aliases[username] = encrypted_name(username)
end

aliases.each do | k, v |
  puts "Your original name is #{k}, and your encrypted name is #{v}"
end