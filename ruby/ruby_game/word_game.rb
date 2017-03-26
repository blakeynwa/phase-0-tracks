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

class GameOfWords
  attr_reader 
  attr_accessor :guess_number, :secret_word, :guess_limit, :guesses,                        :secret_guess
  
  def initialize(secret)
    @secret_word = secret.split("")
    @guess_number = 0 
    @guess_limit = secret.length
    @secret_guess = ("*" * secret.length).split("")
    @guesses = []
  end

  def word_comparison(player_guess)
      @secret_word.each_with_index do |letter, i|
        if letter.include?(player_guess)
          @secret_guess[i] = letter
        end
      end
      @guesses << player_guess
  end
  
end
#user-interface

puts "Welcome to the word game! Player 1, go ahead and enter a word:"
secret_input = gets.chomp
word_game = GameOfWords.new(secret_input)
system("clear") #This command clears the console so the player guessing
                #can't see the previous user's input. I know it works on
                #Mac, not sure about others. If it errors out feel free
                #to remove it.
                
puts "Current word status:"
puts "*" * word_game.secret_word.length


until word_game.guess_number == word_game.guess_limit || word_game.secret_guess.join("") == word_game.secret_word.join("")
  puts "Guess number: #{word_game.guess_number}"
  puts "Try to guess the word by inputting one letter!"
  player_guess = gets.chomp
  if word_game.guesses.include?(player_guess)
    puts "You already guessed that letter, try another!"
  else
    word_game.guess_number += 1
  end
  word_game.word_comparison(player_guess)
  puts "Current word status: #{word_game.secret_guess.join("")}"
end

if word_game.secret_guess.join("") == word_game.secret_word.join("")
  puts "Nice work, you won!"
else
  puts "Shame, you lost! Guess I'll have to find someone better"
end
