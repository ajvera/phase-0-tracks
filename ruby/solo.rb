#Class: Alien

#Attributes:
#- Space vessel: rand from Array of strings
#- Number of eyes: Integer
#- Attitude towards homosapiens: rand from Array of strings
#- Voice: rand from Array of Strings

#Methods:
#- Blink: will return a creepy string describing how the alien blinks
#- Diplomacy: will interact with earth depending on it's additude towards humanity
#- Trade: will respond to trade based on a given resource being offered

class Alien

	attr_reader :voice, :tude_towards_humanity, :space_vessel
	attr_accessor :num_eyes

	def initialize(additude, voice, vessel)
		puts "The sky appears to thicken as if a giant bag of space-corn-starch was just spilled everywhere."
		@num_eyes = 0
		@tude_towards_humanity = additude
		@voice = voice
		@space_vessel = vessel
	end

	def blink
		puts "The alien slowly blinks each of it's #{num_eyes} eyes at you."
	end

	def diplomacy
		puts "*The alien extends its' appendage in what seems to be a gesture of good will*"
	end

	def trade(resource)
		if resource.length > 5
			puts "The alien squeels with excitement and excretes several tonnes of gold"
		else
			blink
		end
	end

end


