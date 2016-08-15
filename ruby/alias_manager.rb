#BUSINESS LOGIC
#iterate through character arrays and advance each char to next vowel
def next_vowel(char)
	vowels = 'aeiou'.chars
	vowel_index = 0
	while vowel_index < vowels.length
		if char == vowels[vowel_index]
			then char = vowels[vowel_index.next]
			break
		else
			char = char
		end
		vowel_index += 1
	end
	char
end
#iterate through character arrays and advance each char to next consonant
def next_consonant(char)
	consonants = 'bcdfghjklmnpqrstvwxyz'.chars
	con_index = 0
	while con_index < consonants.length
		if char == consonants[con_index]
			then char = consonants[con_index.next]
			break
		else
			char = char
		end
		con_index += 1
	end
	char
end

#Split name into a two word array then into two nested character arrays
#translate vowels and consonants to next respective character
#Swap position of nested arrays and join them together again
def name_trans(name)
	name_array = name.downcase.split(' ').map! { |name| name.chars }
	name_array.each do |sub_arrays|
		sub_arrays.map! do |char|
			next_vowel(char)
		end
		sub_arrays.map! do |char|
			next_consonant(char)
		end
	end
	swapped_names = name_array.reverse!
	joined_names = swapped_names[0].join + ' ' + swapped_names[1].join
end

#USER INTERFACE
$name_bank = {}
p "Please enter the name you would like to turn into a secret agent name. Type 'quit' to quit."
original_name = gets.chomp
until original_name == 'quit'
	new_name = name_trans(original_name)
	$name_bank.store(original_name,new_name)
	p "Enter another name. Type 'quit' to quit."
	original_name = gets.chomp
end
$name_bank.each do |original, new|
	p "#{original}'s secret name is #{new}"
end