# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# RELEASE 0
# write a GET route for an address

get '/contact' do
  "Addesss: <br>1234 Main Street<br>Anytown, NH USA"
end

# write a GET route that takes a
# persons name as query parameter

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route that uses route
# parameters to add to numbers

get '/:number_1/plus/:number_2' do
  sum = params[:number_1].to_i + params[:number_2].to_i
  "#{params[:number_1]} plus #{params[:number_2]} equals #{sum}"
end

# RELEASE 1

#1) Other web apps that exist for Ruby are Rails and Apache
#2) Other options for accessing databases in with Sinatra are DataMapper and ActiveRecord
#3) Web stacking is the collection of software for web development.  The basic construct of 
#   software within a stack is: an operating system, database software, programming language, 
#   and a web server
