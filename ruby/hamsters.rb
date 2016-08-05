p "What's the hamsters name?"
name = gets.chomp.to_s

p "What is the hamsters volume level from 1 through 10?"
ham_vol = gets.chomp.to_i

p "What is the hamsters fur color?"
ham_color = gets.chomp.to_s

p "Is #{name} a good candidate for adoption?"
#Could we also have added .downcase to the gets.chomp on line 12?
can_quality = gets.chomp
until can_quality == true || can_quality == false
	if can_quality.downcase == "yes" || can_quality.downcase == "y"
		then can_quality = true
	elsif can_quality.downcase == "no" || can_quality.downcase == "n"
		then can_quality = false
	else
		p "Please type either yes or no."
		can_quality = gets.chomp
	end
end
		

p "What is the hamsters estimated age?"
ham_age = gets.chomp.to_i
if ham_age == ""
	then ham_age = nil
else
end

p "#{name} is your hamsters name!"
p "#{name}'s volume level is #{ham_vol}."
p "#{name}'s fur color is #{ham_color}."
if can_quality == true
	then p "#{name} is a great adoption candidate!"
else
	p "#{name} is not a very good candidate... :("
end
p "#{name} is around #{ham_age} years old."

