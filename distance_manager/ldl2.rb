# LDL2 stands for Long Distance Love Line
# LDL2 is an app designed to make long distance relationships
# a more intentional and meaningful experience for all parties.

###BUSINESS LOGIC###
require 'sqlite3'
require_relative 'users.rb'

# Create constant to access LDL2 db
DB = {:conn => SQLite3::Database.new("ldl2.db")}

Users.create_table

###USER INTERFACE###

# User login
puts "Welcome to LDL2 (the long distance love line)!"
puts "If you are a new user please type 'new' to register." 
puts "If you already have an account please enter your username."
response = gets.chomp
if response == 'new'
  puts "What would you like your username to be? Try to pick somethin you will easily remember!"
  username = gets.chomp
  puts"What is your email address?"
  email = gets.chomp
  puts "What is your long distance partners name?"
  partner_name = gets.chomp
  puts "What is your long distance partners email address?"
  partner_email = gets.chomp
  user = Users.new(username,email,partner_name,partner_email)
  user.save
  puts "Thanks for registering! Now lets move onto the daily Affininator!"
elsif response != 'new'
  ### Affinity Questionare
  puts "On a scale of 0-10, 1 being the lowest and 10 being the highest, how connected to your partner are you feeling today? (decimals are valid)"
  $affinity_level = gets.chomp.to_f
  puts "Please enter an event that happened to you recently that you would like to share with your partner."
  $event = gets.chomp
  puts "Please send an honest message to your partner."
  $message = gets.chomp
  affinity_insert
  puts "Thanks for sharing with your partner, your responses have been emailed."
  puts "Have a most excellent day!"
end





# Define and create AFFINITY table
# create_affinity_table =  <<-SQL
#   CREATE TABLE IF NOT EXISTS affinity(
#   a_id INTEGER PRIMARY KEY,
#   date VARCHAR(225),
#   affinity_level REAL,
#   shared_event VARCHAR(225),
#   message VARCHAR(225),
#   user_id INT,
#   FOREIGN KEY (user_id) REFERENCES users(u_id)
#   )
# SQL
# DB[:conn].execute(create_affinity_table)

# # Define and create USER table
# create_users_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS users (
#   u_id INTEGER PRIMARY KEY,
#   name VARCHAR(225),
#   email VARCHAR(225),
#   partner_name VARCHAR(225),
#   partner_email VARCHAR(225)
#   ) 
# SQL
# DB[:conn].execute(create_users_table)

# For simplicity may remove partner table
# Define and create PARTNER table
# create_partners_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS partners (
#   p_id INTEGER PRIMARY KEY,
#   partner_name VARCHAR(225),
#   )
# SQL
# $db.execute(create_partners_table)

# method to register user data
def users_insert
  DB[:conn].execute("INSERT INTO users (name, email, partner_name, partner_email) VALUES (?,?,?,?)",
    [$username, $email, $partner_name, $partner_email]) 
end

# method to register partner data
# def partners_insert
#   $db.execute("INSERT INTO (partner_name) VALUES (?)",
#     [$partner_name])
# end
# method to register affinity data
def affinity_insert
  DB[:conn].execute("INSERT INTO affinity (date, affinity_level, shared_event, message) 
    VALUES (?,?,?,?)",
    [$timestamp,$affinity_level,$event,$message])
end

#Create timestamp variable
time = Time.new
$timestamp = time.month.to_s + '/' + time.day.to_s + '/' + time.year.to_s

# Get user_id and assign to variable






# PRINT SUMMARY OF PARTNERS MESSAGE
# dump = $db.execute("SELECT * FROM affinity")
# dump.each do |snippet|
#   puts "Your partners connectedness level is #{snippet[2]}."
#   puts "Today your partner wanted to share the following event:\n #{snippet[3]}"
#   puts "They also sent the following message just for you: \n #{snippet[4]}"
# end


# FUNCTIONALITY TO BE ADDED
# User login
  # if new user type new to register - DONE
    # register user information via questionare - DONE
      # verify if partner already exists using combination of email and name - NOT DONE
  # if old user validate login info - NOT DONE
  # if not a new user and user login cannot be validated, exit - NOT DONE
  #proceed to questionare functionality - DONE
#Questionare  
  # if entry for current date exists return last partner submission 
  # exit
  # if no entry for current date exists execute questionaire
    # e-mail results to partner
    # Print info only relevant to users partner
    #exit



