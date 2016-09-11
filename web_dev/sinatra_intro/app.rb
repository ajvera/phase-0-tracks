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

# write a GET route that displays an address
get '/contact' do
  "467 28th St. Awesomeville, CO. 888888"
end

# write a GET route that takes a persons name as a query param and
# interpolates it into a statement. Add conditional logic for 
# instances where no name is present
get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{params[:name]}!"
  else
    "Great job!"
  end
end

#write a GET route that adds two numbers and returns the result
get '/sum/:num1/:num2' do
  sum = "#{params[:num1]}".to_i + "#{params[:num2]}".to_i
  s_sum = sum.to_s
  p s_sum
end

# Release 1
#1 No. Ruby On Rails, Cuba, Padrino & Lotus are anothers
#2 No. MySQL.
#3 All of the software needed for web dev (including OS). 
