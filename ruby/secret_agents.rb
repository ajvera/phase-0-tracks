#Ask for a string (lowercase)
#Advances every letter of a string one letter forward. 
#Any space character should remain a space character

def encrypt (password)
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
  return password
end

#get the encrypted password
#define alphabet variable
#compare encrypted password index to alphabet index and 
#increment backwards 1 

def decrypt (encrypted_pass)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < encrypted_pass.length
    if encrypted_pass[index] == " "
      then encrypted_pass[index] = encrypted_pass[index]
    elsif encrypted_pass[index] == "a"
      then encrypted_pass[index] = "z"
    else
      encrypted_pass[index] = alphabet[alphabet.index(encrypted_pass[index])-1]
    end
    index += 1
  end
  return encrypted_pass
end

#p decrypt(encrypt("some string"))

p "would you like to encrypt of decrypt a password"
$response = gets.chomp
p "what is your password"
$pass = gets.chomp
if $response.downcase == "encrypt"
  then encrypt($pass)
elsif $response.downcase == "decrypt"
  then decrypt($pass)
else
  p "Sorry I don't understand"
end
