class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer","Vixen","Comet","Cupid","Blitzen"]
		@age = 0
	end

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	#getter methods
	def age
		@age
	end
	
	def ethnicity
		@ethnicity
	end

	def gender
		@gender
	end

	def reindeer_ranking
		@reindeer_ranking
	end

	#attribute changing methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		reindeer_ranking.each do |r|
			if r == reindeer
				reindeer_ranking.delete(r)
				reindeer_ranking.insert(-1, reindeer)
			end
		end
	end
	
	#setter method
	def gender= (new_gender)
		@gender = new_gender
	end

end

#Driver code
santa = Santa.new("Male","Black")
puts "This santa is #{santa.gender}, #{santa.ethnicity} and #{santa.age} years old"
puts "Santa currently ranks reindeer as follows: #{santa.reindeer_ranking}"
santa.celebrate_birthday
santa.get_mad_at("Vixen")
santa.gender = "female"
puts "This santa is now #{santa.gender}, #{santa.ethnicity} and #{santa.age} years old"
puts "Santa now ranks reindeer as follows: #{santa.reindeer_ranking}"


#Loop to create santas with pre-existing data structures

santas = []
genders = ["couch", "lemon", "beige", "nuanced"]
ethnicity = ["mostly carbon","partially Bowie","hair-being (like cousin it)","oblong triangle"]

genders.length.times do |i|
	santas << Santa.new(genders[i],ethnicity[i])
	puts "This Santa has a gender of #{genders[i]} and an ethnicity of #{ethnicity[i]}."
	puts "There are currently #{santas.length} Santas in existence!"
	puts "This santa is #{santas[i].age} years old"
	santas[i].celebrate_birthday
	puts "This santa just had a birthday and is now #{santas[i].age} years old"
end
