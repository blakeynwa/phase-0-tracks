puts "What's your name?"
  name = gets.chomp 
def nameswap(string)
  name = string.split
  name.reverse.join(" ")
end

puts nameswap(name)

def vowelchange(string)
vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
originalname = nameswap(string).split("")
vowel_name = originalname.map do |letter|
  if vowels.include? letter
    "a"
  else
    letter
  end
end
end



def conschange(string)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  preconscheck = vowelchange(string)
  cons_name = preconscheck.map do |letter|
    if consonants.include? letter
      "y"
    else
      letter
    end
  end
end

p conschange("blake meyer")
  
  