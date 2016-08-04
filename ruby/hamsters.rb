p "What's the hamsters name?"
name = gets.chomp

p "What is the hamsters volume level from 1 through 10?"
ham_vol = gets.chomp.to_i

p "What is the hamsters fur color?"
ham_color = gets.chomp

p "Is #{name} a good candidate for adoption?"
can_quality = gets.chomp
until can_quality == true || can_quality == false
	if can_quality.downcase == "yes" || can_quality.downcase == "y"
		then can_quality = true
	elsif can_quality == "no" || can_quality == "n"
		then can_quality = false
	else
		p "Please type either yes or no."
		can_quality = gets.chomp
	end
end
		

p "What is the hamsters estimated age?"
if gets.chomp == ""
	then ham_age = nil
else
	ham_age = gets.chomp
end