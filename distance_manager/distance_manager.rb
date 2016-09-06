# BUSINESS LOGIC

require 'sqlite3'

# Create db to house feelings tables
$db = SQLite3::Database.new('feelings.db')
# Create feelings table

create_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS feelings(
  id INTEGER PRIMARY KEY,
  date VARCHAR(225),
  connectedness_level REAL,
  shared_event VARCHAR,
  message VARCHAR(225))
SQL

$db.execute(create_table_cmd)

# CREATE METHOD TO INSERT DATA INTO FEELINGS TABLE

def data_input()
  $db.execute("INSERT INTO feelings (date, connectedness_level, shared_event, message) VALUES (?,?,?,?)",
    [$timestamp,$connection_level,$event,$honest_message])
end

#Create neccisary variables
time = Time.new
$timestamp = time.month.to_s + '/' + time.day.to_s + '/' + time.year.to_s


dump = $db.execute("SELECT * FROM feelings")

# USER INTERFACE

# GET USER INPUT FOR TODAY
puts "On a scale of 0-10, 1 being the lowest and 10 being the highest, how connected to your partner are you feeling today? (decimals are valid)"
$connection_level = gets.chomp.to_f
puts "Please enter an event that happened to you recently that you would like to share with your partner."
$event = gets.chomp
puts "Please send an honest message to your partner."
$honest_message = gets.chomp

# INSERT USER INPUT INTO feelings TABLE
data_input

# PRINT SUMMARY OF PARTNERS MESSAGE
dump.each do |snippet|
  puts "Your partners connectedness level is #{snippet[2]}."
  puts "Today your partner wanted to share the following event:\n #{snippet[3]}"
  puts "They also sent the following message just for you: \n #{snippet[4]}"
end


# UNSUPPORTED FUNCTIONALITY
# Validate current user if new user add user info to user table 
  # if data exists for current user and current date end program
  #if old user proceed to message printout and questionnaire
    # PRINT INFO ONLY RELEVANT TO USERS PARTNER
