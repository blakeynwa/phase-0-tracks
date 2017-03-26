require_relative 'word_game'

describe GameOfWords do 
  let(:word_game) {GameOfWords.new("toast")}

  it "encrypts a secret word and display asterisks" do 
    expect(word_game.word_comparison("t")).to eq "t***t"
  end

end
