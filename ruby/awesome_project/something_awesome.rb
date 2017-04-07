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

def beer_adder(db)
  loop do 
    puts "Would you like to add more beer? Type done if you are finished"
      user_response = gets.chomp
      if user_response == "yes"
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
    break if user_response == "done"
  end
end

def display_beers(db)
  puts "Here's all the beers you've entered so far:"
  total_beers = db.execute("SELECT * FROM beer_tracker")
  total_beers.each do |beer|  
    puts ""
    puts "Name: #{beer['brewery']} #{beer['beer_name']}"
    puts "Style: #{beer['style']}"
    puts "ABV: #{beer['abv']}%"
    puts "Date Consumed: #{beer['date']}"
    puts "Ranking: #{beer['ranking']}/10"
  end
end

def intro(db)
  puts "Welcome to the beer tracker!"
  puts "I'm a program that can track the beer you drink."
  puts "I'm going to guide you through some questions to start."
  puts "What would you like done? (Add beer, view the beers you've added)"
    user_response = gets.chomp
    if user_response == "View my beers"
      display_beers(db)
    elsif user_response == "Add beer"
      beer_adder(db)
    end 
end

intro(db)


