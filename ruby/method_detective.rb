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

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
p "The case of the disappearing last letter".chop
#another way this can be done is with .chomp:
"The case of the disappearing last letter".chomp("r")
p "The case of the disappearing last letter".chomp("r")

"The mystery of the missing first letter".slice(1, 38)
# => "he mystery of the missing first letter"
p "The mystery of the missing first letter".slice(1, 38)

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
p "Elementary,    my   dear        Watson!".squeeze

"z".ord
# => 122 
p "z".ord

# "How many times does the letter 'a' appear in this string?".<???>
# => 4