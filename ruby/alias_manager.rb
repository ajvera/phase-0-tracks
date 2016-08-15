#BUSINESS LOGIC
#iterate through character arrays and advance each vowel
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
#Swap position of nested arrays and join them together again
def nested_name(name)
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