#create char array variable for vowels
$vowels = 'aeiou'.split('')

#Create a method which turns a str into an array of words then
#reverses the order of the array and finally joins the words together
#into one string
def name_swapper(name)
	name_array = name.split(' ')
	swapped_named = name_array.reverse!
	joined_name = swapped_named.join(' ')
end

#define a method which iterates through an array of characters and compare them to 
#array of vowles then maps any vowle to the next in the array
def vowel_comp(name)
	name_ary = name.chars
	name_index = 0
	while name_index < name_ary.length
		if  name_ary[name_index].downcase == "a"
			name_ary[name_index] = name_ary[name_index].next
		end
		name_index +=1
	end
	j_name = name_ary.join
end

#Split name into a two word array
#Split word array into two nested character arrays
def nested_name(name)
	name_array = name.downcase.split(' ')
	nest = name_array.map do |name|
		name.chars
	end
	nest.map do |char|
		if char == "a"
			then char = "e"
		elsif char == "e"
			then char = "i"
		elsif char == "i"
			then char = "o"
		elsif char == "o"
			then char = "u"
		elsif char == "u"
			then char = "a"
		else char = char
		end
	end				
end
p nested_name("Adam Vera")

#iterate through character arrays and advance each vowel
#Combine character arrays into two word array
#swap position of word arrays