current_year = Time.now.year
suspicious_name = nil
suspicious_age = nil
suspicious_taste = nil
suspicious_insurance_needs = nil
i = 0
p "How many employees will be processed?"
employees = gets.chomp

while i < employees.to_i

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
  if likes_garlic.downcase == "no" || likes_garlic.downcase == "n"
    then suspicious_taste = true
  elsif likes_garlic.downcase == "yes" || likes_garlic.downcase == "y"
    then suspicious_taste = false
  else
  end


  p "Would you like to enroll in the company's health insurance?"
  needs_health_insurance = gets.chomp
  if needs_health_insurance.downcase == "no" || needs_health_insurance.downcase == "n"
    then suspicious_insurance_needs = true
  elsif needs_health_insurance.downcase == "yes" || needs_health_insurance.downcase =="y"
    then suspicious_insurance_needs = false
  else
  end

  if suspicious_age == false && suspicious_taste == false ||
  suspicious_age == false && suspicious_insurance_needs == false && suspicious_name == false
    then p "Probably not a vampire."
  elsif suspicious_age == true && suspicious_taste == true ||
  suspicious_age == true && suspicious_insurance_needs == true
    then p "Probably a vampire."
  elsif suspicious_age == true && suspicious_taste == true && 
  suspicious_insurance_needs == true && suspicious_name == false
    then "Almost certainly a vampire."
  elsif suspicious_age == false && suspicious_taste == false && 
  suspicious_insurance_needs == false && suspicious_name == true
    then
  else p "Results inconclusive"
  end
  i += 1
end
