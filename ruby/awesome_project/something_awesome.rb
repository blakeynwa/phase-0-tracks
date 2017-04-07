require 'sqlite3'

db = SQLite3::Database.new("beertracker.db")
db.results_as_hash = true 

create_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS beer_tracker(
    id INTEGER PRIMARY KEY,
    brewery VARCHAR(255),
    beer_name VARCHAR(255),
    style VARCHAR(255),
    abv INT,
    date VARCHAR(255),
    ranking VARCHAR(255)
  )
SQL

db.execute(create_table)

puts "Welcome to the beer tracker! I'm a program that can track 
the beer you drink. I'm going to guide you through some questions to 
add your beer..."

def beer_adder(db)
  puts "What brewery created this fine beer?"
    brewery = gets.chomp
  puts "What's the beer's name?"
    beer_name = gets.chomp
  puts "What style is this beer?"
    style = gets.chomp
  puts "What is the abv? Whole numbers please!"
    abv = gets.chomp
  puts "What date did you consume this beer? (typed out please!)"
    date = gets.chomp
  puts "Out of 10 stars, what would you rank this beer?"
    ranking = gets.chomp
  db.execute("INSERT INTO beer_tracker (brewery, beer_name, style, abv, date, ranking)
   VALUES (?, ?, ?, ?, ?, ?)", [brewery, beer_name, style, abv, date, ranking])
end

def looper(db)
  loop do 
    puts "Would you like to add more beer? Type done if you are finished"
      user_response = gets.chomp
      if user_response == "yes"
        beer_adder(db)
      end
    break if user_response == "done"
  end
end

def display_beers(db)
  puts "Here's all the beers you've entered so far:"
  total_beers = db.execute("SELECT * FROM beer_tracker")
  total_beers.each do |beer|
    puts "Name: #{beer['brewery']} #{beer['beer_name']}
          Style: #{beer['style']}
          ABV: #{beer['abv']}
          Date Consumed: #{beer['date']}
          Ranking out of 10: #{beer['ranking']}"
  end
end

looper(db)
display_beers(db)


