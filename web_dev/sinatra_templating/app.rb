# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db2 = SQLite3::Database.new("languages.db")
db.results_as_hash = true
db2.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# add campus
get '/campus/new' do
  @students = db.execute("SELECT * FROM students")
  erb :campus
end

# languages page
get '/languages/new' do
  erb :languages
end

post '/languages/' do 
  db2.execute("INSERT INTO languages (language) VALUES (?)", [params['language']])
  redirect '/'
end

