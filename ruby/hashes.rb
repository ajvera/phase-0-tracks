

#Give the user the opportunity to update a key (no need to loop, once is fine). 
#After all, sometimes users make mistakes! If the designer says "none", skip it. 
#But if the designer enters "decor_theme" (for example), your program should ask 
#for a new value and update the :decor_theme key. (Hint: Strings have methods 
#that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash -- 
#no need to handle user errors.
#Print the latest version of the hash, and exit the program.

#BUISNESS LOGIC
#Create a hash where keys represent the details needed for a given client
#and the values are set to nil (will later be replaced with user input) 
client_details = {
  name: nil,
  age: nil,
  number_of_children: nil,
  decor_theme: nil,
  feng_shui: nil
}

#USER INTERFACE
#print questions for user data and assign responses as hash values
p "Welcome to the custom interior design-o-max 821.c"
p "Please enter your name" 
client_details[:name] = gets.chomp.to_s
p "How many years old are you?"
client_details[:age] = gets.chomp.to_i
p "How many children do you have?"
client_details[:number_of_children] = gets.chomp.to_s
p "What theme would you like your interior design to have?"
client_details[:decor_theme] = gets.chomp.to_s
p "Do you care about Feng Shui? (yes or no)"
client_details[:feng_shui] = gets.chomp.to_s
if client_details[:feng_shui] == "yes"
  then client_details[:feng_shui] = true
else
  client_details[:feng_shui] = false
end
p client_details
p "Would you like to make any changes to these responses? (if none type 'none')"
edit_response = gets.chomp
if edit_response 

