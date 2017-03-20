puts "What's your name?"
  name = gets.chomp 
def nameswap(string)
  name = string.split
  name.reverse.join(" ")
end

puts nameswap(name)

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



p conschange("Felicia Torres")
  