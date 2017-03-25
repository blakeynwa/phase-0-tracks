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

class WordGame
  attr_writer :secret_word
  attr_reader :user
  
  def initialize(secret)
    @secret_word = secret
    @guess_number = 0 
    @game_over = false 
  end

  def word_compare(user)
    show_progress = " "
    @secret_word.chars.each do |letter|
      if user.include?(letter)
        show_progress << " #{letter} "
      else
        show_progress << " _ "
      end
    end
    show_progress
  end
  
end


  
test = WordGame.new("toast")

test.word_compare("t")




