=begin
Create word-guessing game class titled GameOfWords
Define initialize method
  Accepts a word "secret word" (that is going to be the word the 
  second user guesses)
  Tracks a guess count and creates a guess count limit based on the 
  secret word's length + 2
  Guesses array that keeps track of all guesses

Define word_comparison method
  Compares the secret_word instance variable with the player_guess variable
  If any of the letters indexes in the secret_word match the player_guess,
  return the matching letters in the right place, asterisks in the other. 
  (i.e, if secret_word = toast and player_guess = t, return t***t)
  All guesses enter the guesses array for later comparison

user interface (driver code)
  Welcomes first player to the word game, invites them to enter a word
  for the second player to guess
  Once the word is entered, a new instance of GameOfWords is created
  The console clears so the second player can't see the word 
  Asterisks print to the console in place of the secret word, and player
  2 is invited to guess the word one letter at a time
  Guess count is increased by one with each guess (unless the guess 
  has already been made.)
  After every guess, the word status is printed to the console, showing
  any matches with the right letter, asterisks in place of letters not
  yet guessed.
  IF the second player guesses all letters in the secret word before
  the guess limit, then they are given a winning message. IF they fail
  to do this, then they are treated with a taunting losing message.

=end

class GameOfWords
  attr_reader :guess_limit, :secret_guess, :secret_word, :guesses
  attr_accessor :guess_number                       
  
  def initialize(secret)
    @secret_word = secret.split("")
    @guess_number = 0 
    @guess_limit = secret.length + 2
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
secret_word = gets.chomp
word_game = GameOfWords.new(secret_word)
system("clear") #This command clears the console so the player guessing
                #can't see the previous user's input. I know it works on
                #Mac, not sure about others. If it errors out feel free
                #to remove it.
puts "Player 2, your turn to guess the word!"
puts "Current word status:"
puts "*" * word_game.secret_word.length

#loop to track guesses and print the status of the word

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

#code to determine a win or a loss

if word_game.secret_guess.join("") == word_game.secret_word.join("")
  puts "Nice work, you won in #{word_game.guess_number} guesses!"
else
  puts "Shame, you had #{word_game.guess_number} guesses and still lost! Guess I'll have to find someone better"
end