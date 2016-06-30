# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

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
get '/students/about' do
	erb :pairing
end

get '/students/about/future_locations' do
	@futures = db.execute("SELECT * FROM futures")
	erb :future_locations
end

post '/student' do
	db.execute("CREATE TABLE IF NOT EXISTS futures (future_loc VARCHAR(255))")
	db.execute("INSERT INTO futures (future_loc) VALUES (?)", [params['future_loc']])
	redirect '/students/about/future_locations'
end