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
  attr_reader 
  attr_accessor :guess_number, :secret_word, :guess_limit, :game_over, 
                :print_guesses, :guesses, :user, :show_progress, :dashes
                :guess_array
  
  def initialize(secret)
    @secret_word = secret.split("")
    @guess_number = 0 
    @game_over = false 
    @guess_limit = secret.length
    @show_progress = ("*" * secret.length).split("")
    @guesses = []
  end

  def word_compare(user_input)
      @secret_word.each_with_index do |letter, i|
        if letter.include?(user_input)
          @show_progress[i] = letter
        end
      end
      @guesses << user_input
  end
  
end
#user-interface

puts "Welcome to the word game! Player 1, go ahead and enter a word:"
secret_input = gets.chomp
test = WordGame.new(secret_input)
puts "Current word status:"
puts "*" * test.secret_word.length


until test.guess_number == test.guess_limit || test.show_progress.join("") == test.secret_word.join("")
  puts "Guess number: #{test.guess_number}"
  puts "Try to guess the word by inputting one letter!"
  user_input = gets.chomp
  if test.guesses.include?(user_input)
    puts "You already guessed that letter, try another!"
  else
    test.guess_number += 1
  end
  test.word_compare(user_input)
  puts "Current word status: #{test.show_progress.join("")}"
end

if test.show_progress.join("") == test.secret_word.join("")
  puts "Nice work, you won!"
else
  puts "Shame, you lost! Guess I'll have to find someone better"
end
