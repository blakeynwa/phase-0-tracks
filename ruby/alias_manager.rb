

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
  aliases[:original] = username
  aliases[:encrypt] = encrypted_name(username)
  puts "#{aliases[:original]} is your real name, but #{aliases[:encrypt]} is your encrypted name."
end










  












  