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