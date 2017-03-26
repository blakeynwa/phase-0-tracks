require_relative 'word_game'

describe GameOfWords do 
  let(:word_game) {GameOfWords.new("toast")}

  it "accepts a letter as a guess" do 
    expect(word_game.word_comparison("t")).to eq ["t"]
  end

  it "puts the guess limit equivalent to the secret word length plus 2" do
    expect(word_game.guess_limit).to eq 7
  end

  it "puts asterisks in place of secret word given for user to guess" do 
    expect(word_game.secret_guess).to eq ["*", "*", "*", "*", "*"]
  end



end
