module Shout
	def defensive_yell(phrase)
		puts phrase + " *was yelled defensively*"
	end

	def yell(phrase)
		phrase.upcase + "!!!"
	end
end

class Rhino
	include Shout
end

class Millitary_person
	include Shout
end
#Driver Code

mama_rhino = Rhino.new
puts mama_rhino.defensive_yell("Ehhhhheehhehhhhhhhggg")

drill_sargent = Millitary_person.new
puts drill_sargent.yell("would you like to grab some tea")

=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		'\(^0^)/'  + words + "!!!"
	end
end

#Driver code
p Shout.yelling_happily("This is insane")

p Shout.yell_angrily("I am having so much fun")
=end