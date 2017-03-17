test_hash = {
  vowels: ["a", "e", "i", "o", "u"],
  consonants: ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", 
                "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
}


=begin
if string == test_hash[:vowel]
  puts test_hash[:vowel][1 + 1]
elsif string == test_hash[:consonants]
  puts test_hash[:consonants][1 + 1]
end
=end


def letter_detector(string)
  test_hash = {
  vowels: ["a", "e", "i", "o", "u"],
  consonants: ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", 
                "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  }
  if test_hash[:vowels].include?(string) == true 
    puts test_hash[:vowels][+1]
  elsif test_hash[:consonants].include?(string) == true 
    puts test_hash[:consonants][+1]
  end
end


letter_detector("i")
letter_detector("b")
letter_detector("r")



