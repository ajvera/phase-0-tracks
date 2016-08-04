p "What's the hamsters name?"
name = gets.chomp

p "What is the hamsters volume level?"
ham_vol = gets.chomp.to_i

p "What is the hamsters fur color?"
ham_color = gets.chomp

p "Is #{name} a good candidate for adoption?"
can_quality = gets.chomp

p "What is the hamsters estimated age?"
if gets.chomp == ""
	then ham_age = nil
else
	ham_age = gets.chomp
end