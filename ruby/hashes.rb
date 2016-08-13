#BUISNESS LOGIC
#Create a hash where keys represent the details needed for a given client
#and the values are set to nil (will later be replaced with user input) 
$client_details = {
  name: nil,
  age: nil,
  number_of_children: nil,
  decor_theme: nil,
  feng_shui: nil
}

#create method to translate responses into boolean datatype
def feng_trans(response)
  if response == "yes"
    then $client_details[:feng_shui] = true
  elsif response == "no"
    then $client_details[:feng_shui] = false
  else
  end
end


#USER INTERFACE
#print questions for user data and assign responses as hash values
p "Welcome to the custom interior design-o-max 821.c"
p "Please enter your name" 
$client_details[:name] = gets.chomp.to_s
p "How many years old are you?"
$client_details[:age] = gets.chomp.to_i
p "How many children do you have?"
$client_details[:number_of_children] = gets.chomp.to_s
p "What theme would you like your interior design to have?"
$client_details[:decor_theme] = gets.chomp.to_s
p "Do you care about Feng Shui? (yes or no)"
feng_response = gets.chomp.to_s
feng_trans(feng_response)
p $client_details

#Add logic to allow user to edit one of their responses and
#ensure integrity of datatypes 
p "Would you like to make any changes to these responses? (if none type 'none')"
edit_response = gets.chomp.to_sym
if edit_response == :feng_shui
  then p "please enter your new response"
  feng_response = gets.chomp.to_s
  feng_trans(feng_response)
    p "your edited responses are as follows:"
  p $client_details
elsif $client_details.include?(edit_response)
  then p "please enter your new response"
  $client_details[edit_response] = gets.chomp
  p "your edited responses are as follows:"
  p $client_details
elsif edit_response.to_s == "none"
  p "Just to reconfirm here are all of your responses"
  p $client_details
else
end