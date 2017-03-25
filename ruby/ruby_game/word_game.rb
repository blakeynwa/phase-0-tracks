=begin
#class creation
(insert here attr_reader & attr_accessor)
Create word-guessing game class titled WordGame
Define initialize method
  Accepts a word "secret word" (that is going to be the word the 
  second user guesses)
  Tracks @guess_count
  Create letters array that contains all alphabetical letters, lowercase
  and capitalized 
  @game_over boolean 

Define check_word method
  #Compares the secret_word instance variable with the user_word variable,
  @game_over returns as true if secret_word and user_word perfectly match
  #If any of the letters indexes in the secret_word match the user_word,
  return the matching letters in the right place, dashes in the other. 
  (i.e, if secret_word = snake and user_word = brake, return --ak-)
  #User has the amount of guesses as length of secret word, meaning in the
  example, user has 5 guesses (This will be done below in the user interface)
  #Each time check_word run, increase guess count by 1 (if statement - 
  "IF guess != previous guess, guess_count += 1")

#user interface (driver code)
  **NEED MORE PSEUDO HERE**
=end

#Here's a solid basis for the word comparison:

def word_compare(secret, user)
  secret_word = secret
  secret_array = secret_word.split("")
  user_word = user
  checker = user_word.split("")
  word_checker = checker.map do |letter|
    if secret_array.include? letter
      secret_array[secret_array.index(letter)]
    else
      "-"
    end
  end
end

word_compare("toast", "boast")










