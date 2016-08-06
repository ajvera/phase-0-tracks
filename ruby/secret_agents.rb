$encrypted_pass = "zabagoots abonal"
#Ask for a string (lowercase)
#Advances every letter of a string one letter forward. 
#Any space character should remain a space character

p "Please enter your password"
$password = gets.chomp.to_s.downcase

def encrypt
  index = 0
  while index < $password.length
    if $password[index] == " "
      then $password[index] = $password[index]
    elsif $password[index] == "z"
      then $password[index] = "a"
    else
      $password[index] = $password[index].next!
    end
    index += 1
  end
end

$encrypted_pass = $password

#get the encrypted password
#define alphabet variable
#compare encrypted password index to alphabet index and 
#increment backwards 1 

def decrypt
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < $encrypted_pass.length
    if $encrypted_pass[index] == " "
      then $encrypted_pass[index] = $encrypted_pass[index]
    elsif $encrypted_pass[index] == "a"
      then $encrypted_pass[index] = "z"
    else
      $encrypted_pass[index] = alphabet[alphabet.index($encrypted_pass[index])-1]
    end
    index += 1
  end
  p $encrypted_pass
end