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
	end

	def trade(resource)
	end

end

additudes = {
	positive: ["great","new and wonderful sensations", "pretty chill", "enamored"],
	neutral: ["ambivalent","meh..."],
	negative: ["distain","envy","anger from not getting enough hugs that it projects onto"] }
voices = ["8 tonnes of gravel falling into a vat of molasses","smooth jazz",
	"the decline of modern civilization","mating turtles", "french poetry spoken by an eagle with mono"]
vessels = ["Flying Tube Sock", "Classic UFO", "Interdimensional Platypus", "David Hasslehoff", "Space Dust"]
eyes = [*32..796]

alien_count = 0