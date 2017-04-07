require 'sqlite3'

db = SQLite3::Database.new("beertracker.db")

create_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS beer_tracker(
    id INTEGER PRIMARY KEY,
    brewery VARCHAR(255),
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

puts "What brewery created this fine beer?"
  brewery = gets.chomp
puts "What style is this beer?"
  style = gets.chomp
puts "What is the abv? Whole numbers please!"
  abv = gets.chomp
puts "What date did you consume this beer? (typed out please!)"
  date = gets.chomp
puts "Out of 10 stars, what would you rank this beer?"
  ranking = gets.chomp

db.execute("INSERT INTO beer_tracker (brewery, style, abv, date, ranking) VALUES (?, ?, ?, ?, ?)", [brewery, style, abv, date, ranking])

