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