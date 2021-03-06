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
    puts "Would you like to add more beer? (yes/no)"
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
    break if user_response == "no"
  end
end

def intro
  puts "Welcome to the beer tracker!"
  puts "I'm a program that can track the beer you drink."
  puts "I'm going to guide you through some questions to start."
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

def update_ranking(db)
  puts "Please enter the name of the beer's ranking you would like to update"
    user_response = gets.chomp
  puts "And what would you like to update the ranking to?"
    new_ranking = gets.chomp.to_i
  db.execute("UPDATE beer_tracker SET ranking=? WHERE beer_name=?", [new_ranking, user_response])
end

def delete_beer(db)
  puts "What's the name of the beer you want to delete?"
    user_response = gets.chomp
  db.execute("DELETE FROM beer_tracker WHERE beer_name=?", [user_response])
end

def favorites(db)
  puts "Here are the beers you ranked higher than 7/10!"
  fav_beers = db.execute("SELECT * FROM beer_tracker WHERE ranking>7")
  fav_beers.each do |beer|
    puts ""
    puts "Name: #{beer['brewery']} #{beer['beer_name']}"
    puts "Style: #{beer['style']}"
    puts "ABV: #{beer['abv']}%"
    puts "Date Consumed: #{beer['date']}"
    puts "Ranking: #{beer['ranking']}/10"
  end
end

def high_abv(db)
  puts "If you want to get drunk, here are all the beers with ABV over 7!"
  drunk = db.execute("SELECT * FROM beer_tracker WHERE abv>7")
  drunk.each do |beer|
    puts ""
    puts "Name: #{beer['brewery']} #{beer['beer_name']}"
    puts "Style: #{beer['style']}"
    puts "ABV: #{beer['abv']}%"
    puts "Date Consumed: #{beer['date']}"
    puts "Ranking: #{beer['ranking']}/10"
  end
end

def questions(db)
  intro
  loop do 
  puts "How can I help you? (Add beer, View my beers, Update ranking, Show favorites, Delete an entry, I want to get drunk! or if you're done type All done!)"
    user_response = gets.chomp
    if user_response == "View my beers"
      display_beers(db)
    elsif user_response == "Add beer"
      beer_adder(db)
    elsif user_response == "Update ranking"
      update_ranking(db)
    elsif user_response == "Delete an entry"
      delete_beer(db)
    elsif user_response == "Show favorites"
      favorites(db)
    elsif user_response == "I want to get drunk!"
      high_abv(db)
    elsif user_response == "All done!"
      puts ""
    else
      puts "Sorry, I don't understand that!"
    end 
   break if user_response == "All done!"
  end
  puts "Thank you for using the beer tracker!"
end

questions(db)


