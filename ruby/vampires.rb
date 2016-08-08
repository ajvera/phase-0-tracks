current_year = Time.now.year
suspicious_name = nil
suspicious_age = nil
suspicious_taste = nil
suspicious_insurance_needs = nil

p "What is your name?"
name = gets.chomp

if name == "Drake Cula" || name == "Tu Fang"
  then suspicious_name = true
else
  suspicious_name = false
end

p "What year were you born?"
yob = gets.chomp

p "How old are you?"
age = gets.chomp

if yob + age != current_year
  then suspicious_age = true
else
  suspicious_age = false
end

p "Our cafeteria serves garlic bread."
p "Should we order some for you?"
likes_garlic = gets.chomp
if likes_garlic.downcase == "yes" || likes_garlic.downcase == "y"
  then suspicious_taste = false
elsif likes_garlic.downcase == "no" || likes_garlic.downcase == "n"
  then suspicious_taste = true
else
end


p "Would you like to enroll in the company's health insurance?"
needs_health_insurance = gets.chomp
if needs_health_insurance.downcase == "yes" || needs_health_insurance.downcase == "y"
  then suspicious_insurance_needs = false
elsif needs_health_insurance.downcase == "no" || needs_health_insurance.downcase =="n"
  then suspicious_insurance_needs = true
else
end

if suspicious_age == true
  then p "Definitely a vampire."
elsif suspicious_age == false && suspicious_taste == false ||
suspicious_age == false && suspicious_insurance_needs == false
  then p "Probably not a vampire."
elsif suspicious_age == true && suspicious_taste == true ||
suspicious_age == true && suspicious_insurance_needs == true
  then p "Probably a vampire."
elsif suspicious_age == true && suspicious_taste == true && suspicious_insurance_needs == true
  then "Almost certainly a vampire."
else p "Results inconclusive"
end
    



  
age = gets.chomp

p "Our cafeteria serves garlic bread."
p "Should we order some for you?"
likes_garlic = gets.chomp

p "Would you like to enroll in the company's health insurance?"
needs_health_insurance = gets.chomp