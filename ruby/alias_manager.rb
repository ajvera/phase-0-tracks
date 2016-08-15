#create variable for vowels
vowels = 'aeiou'
vowel_array = vowels.split('')

#Create a method that breaks a string into and array of individual words
def name_chunker(name)
	name_array = name.split(' ')
end

#Create a method that swaps the first word and last word of an array for word strings
def name_swapper(name)
	swapped_name = name_chunker(name).reverse!
end

#Create a method that joins a swapped name array into a string again
def name_joiner(name)
	joined_name = name_swapper(name).join(' ')
end

