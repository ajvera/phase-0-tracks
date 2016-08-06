#Ask for a string (lowercase)
#Advances every letter of a string one letter forward. 
#Any space character should remain a space character

p "Please enter your password"
password = gets.chomp.to_s.downcase

index = 0
while index < password.length
  if password[index] == " "
    then password[index] = password[index]
  elsif password[index] == "z"
    then password[index] = "a"
  else
    password[index] = password[index].next!
  end
  index += 1
end

p password

