# LDL2 stands for Long Distance Love Line
# LDL2 is an app designed to make long distance relationships
# a more intentional and meaningful experience for all parties.
# There is a lot of features I would like to add and hopefully will overtime.
# Due to time and knowledge limitations I am submitting as is for 8.5

###BUSINESS LOGIC###
require 'sqlite3'
require_relative 'users.rb'
require_relative 'affinity.rb'

# Create constant to access LDL2 db
DB = {:conn => SQLite3::Database.new("ldl2.db")}

Users.create_table
Affinity.create_table

#Create timestamp variable
time = Time.new
$timestamp = time.month.to_s + '/' + time.day.to_s + '/' + time.year.to_s

###USER INTERFACE###

# User login
puts "Welcome to LDL2 (the long distance love line)!"
puts "If you are a new user please type 'new' to register." 
puts "If you already have an account please enter your username."
response = gets.chomp
if response == 'new'
  puts "What would you like your username to be? Try to pick somethin you will easily remember!"
  name = gets.chomp
  puts"What is your email address?"
  email = gets.chomp
  puts "What is your long distance partners name?"
  partner_name = gets.chomp
  puts "What is your long distance partners email address?"
  partner_email = gets.chomp
  Users.create(name: name, email: email, partner_name: partner_name, partner_email: partner_email)
  puts "Thanks for registering! Now lets move onto the daily Affininator!"
  ### Affinity Questionare
  puts "On a scale of 0-10, 1 being the lowest and 10 being the highest, how connected to your partner are you feeling today? (decimals are valid)"
  affinity_level = gets.chomp.to_f
  puts "Please enter an event that happened to you recently that you would like to share with your partner."
  event = gets.chomp
  puts "Please send an honest message to your partner."
  message = gets.chomp
  # OUTSTANDING QUESTION
  # user_id is a FOREIGN KEY - how do I map the current users u_id to their affinity submission?
  Affinity.create(date: $timestamp, affinity_level: affinity_level , shared_event: event, 
    message: message, user_id: nil)
  puts "Thanks for sharing with your partner, your responses have been emailed."
  puts "Have a most excellent day!"
elsif response != 'new'
  # Want to add feature to compare username to users database to validate user
  # Return last affinity submitted by partner
  # execute affinity questionare
end

# PRINT logic initial draft
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
#Questionare - NOT DONE
  # if entry for current date exists return last partner submission 
  # exit
  # if no entry for current date exists execute questionaire
    # e-mail results to partner
    # Print info only relevant to users partner
    #exit



