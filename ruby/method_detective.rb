# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "iNvEsTiGaTiOn".swapcase

"zom".insert(2, "o")
# => “zoom”
p "zom".insert(2, "o")

"enhance".center(15)
# => "    enhance    "
p "enhance".center(15)

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "Stop! You’re under arrest!".upcase
#upcase! will do similar, but will return nil if no changes were made to
#the string (i.e., if you already inserted a fully capitalized string)

"the usual".insert(9, " suspects")
#=> "the usual suspects"
p "the usual".insert(9, " suspects")

" suspects".insert(0, "the usual")
# => "the usual suspects"
p " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4