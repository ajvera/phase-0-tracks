#Class: Alien

#Attributes:
#- Space vessel
#- Number of eyes
#- Attitude towards homosapiens
#- Voice

#Methods:
#- Blink: will return a creepy string describing how the alien blinks
#- Diplomacy: will interact with earth people
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

aliens = []

puts "Would you like to create a new alien? (y/n)"
desire_to_create = gets.chomp
until desire_to_create == 'n'
	puts "How many eyes does this alien have?"
	eyes = gets.chomp.to_i
	puts "What is this aliens' additude towards humanity?"
	additude = gets.chomp.to_s
	puts "How would you describe the aliens' voice?"
	voice = gets.chomp.to_s
	puts "What kind of spaceship does the alien have?"
	ship = gets.chomp.to_s
	aliens << Alien.new(additude,voice,ship)
	puts "Would you like to create a new alien? (y/n)"
	desire_to_create = gets.chomp
end

aliens.length.times do |i|
	puts "Alien ##{i + 1} has #{aliens[i].num_eyes} eyes."
	puts "Alien ##{i + 1} feels #{aliens[i].tude_towards_humanity} about human beings."
	puts "Alien ##{i + 1} has a #{aliens[i].voice} voice."
	puts "Alien ##{i + 1} uses a #{aliens[i].space_vessel} vessel to cruise the galaxy with."
end


