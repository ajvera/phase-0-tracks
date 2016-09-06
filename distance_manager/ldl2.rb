# LDL2 stands for Long Distance Love Line
# LDL2 is an app designed to make long distance relationships
# a more intentional and meaningful experience for all parties.

# BUSINESS LOGIC
require 'sqlite3'

# Create ldl2 db which will contain neccisary tables
$db = SQLite3::Database.new('ldl2.db')

# Define and create afinity table
create_affinity_table =  <<-SQL
  CREATE TABLE IF NOT EXISTS affinity(
  a_id INTEGER PRIMARY KEY,
  date VARCHAR(225),
  affinity_level REAL,
  shared_event VARCHAR(225),
  message VARCHAR(225),
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(u_id)
  )
SQL
$db.execute(create_affinity_table)

# Define and create user table
create_users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
  u_id INTEGER PRIMARY KEY,
  name VARCHAR(225),
  email VARCHAR(225),
  partner_id INT,
  FOREIGN KEY (partner_id) REFERENCES partners(p_id)
  ) 
SQL
$db.execute(create_users_table)

# Define and create partner table
create_partners_table = <<-SQL
  CREATE TABLE IF NOT EXISTS partners (
  p_id INTEGER PRIMARY KEY,
  partner_name VARCHAR(225),
  partner_u_id INT,
  FOREIGN KEY (partner_u_id) REFERENCES users(u_id)
  )
SQL
$db.execute(create_partners_table)

# CREATE METHOD TO INSERT DATA INTO FEELINGS TABLE
def data_input()
  $db.execute("INSERT INTO affinity (date, affinity_level, shared_event, message) VALUES (?,?,?,?)",
    [$timestamp,$connection_level,$event,$honest_message])
end

#Create neccisary variables
time = Time.new
$timestamp = time.month.to_s + '/' + time.day.to_s + '/' + time.year.to_s


dump = $db.execute("SELECT * FROM affinity")

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


# FUNCTIONALITY TO BE ADDED
# User login
  # if new user type new to register
    # register user information via questionare
      # verify if partner already exists using combination of email and name
  # if old user validate login info
  # if not a new user and user login cannot be validated, exit
  #proceed to questionare functionality
#Questionare  
  # if entry for current date exists return last partner submission 
  # exit
  # if no entry for current date exists execute questionaire
    # e-mail results to partner
    # Print info only relevant to users partner
    #exit



