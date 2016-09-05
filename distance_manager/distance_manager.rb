require 'sqlite3'

# Create db to house feelings tables
$db = SQLite3::Database.new('feelings.db')
# Create feelings table

create_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS feelings(
  id INTEGER PRIMARY KEY,
  date INTEGER,
  connectedness_level REAL,
  shared_event VARCHAR,
  message VARCHAR(225))
SQL

$db.execute(create_table_cmd)

time = Time.new
$timestamp = time.month.to_s + '/' + time.day.to_s + '/' + time.year.to_s

puts "On a scale of 0-10, 1 being the lowest and 10 being the highest, how connected to your partner are you feeling today? (decimals are valid)"
$connection_level = gets.chomp.to_f
puts "Please enter an event that happened to you recently that you would like to share with your partner."
$event = gets.chomp
puts "Please send an honest message to your partner."
$honest_message = gets.chomp

def data_input()
  $db.execute("INSERT INTO feelings (date, connectedness_level, shared_event, message) VALUES (?,?,?,?)",
    [$timestamp,$connection_level,$event,$honest_message])
end

data_input
