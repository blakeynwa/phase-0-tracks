class GameOfWords
  attr_reader :guess_limit, :secret_guess, :secret_word, :guesses
  attr_accessor :guess_number, :game_limit                       
  
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
  
  def game_limit
    until guess_number == guess_limit || secret_guess.join("") == secret_word.join("")
      puts "Guess number: #{guess_number}"
      puts "Try to guess the word by inputting one letter!"
      player_guess = gets.chomp
        if guesses.include?(player_guess)
          puts "You already guessed that letter, try another!"
        else
          @guess_number += 1
        end
      word_comparison(player_guess)
      puts "Current word status: #{secret_guess.join("")}"
    end
  end
  
  def win_or_loss
    if secret_guess.join("") == secret_word.join("")
      puts "Nice work, you won in #{guess_number} guesses!"
    else
      puts "Shame, you had #{guess_number} guesses and still lost! Guess I'll have to find someone better"
    end
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
word_game.game_limit
word_game.win_or_loss






