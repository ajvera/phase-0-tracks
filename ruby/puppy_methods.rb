class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_woofs)
  	puts "Woof! " * num_woofs
  end

  def roll_over()
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def mark_territory()
  	puts "*thought the floor looked a bit too dry*"
  	puts "*that's fixed now*"
  end

  def initialize()
  	puts "Initializing new puppy instance..."
  end

end

class Turtle

	def move()
		puts "*Walks slowly*"
	end

	def talk(phrase)
		new_phrase = phrase.chars
		new_phrase.each do |letter|
			if letter == " "
				letter = letter
			elsif new_phrase.index(letter).even?
				letter.insert(0,letter * 5)
			elsif new_phrase.index(letter).odd?
				letter.insert(0,letter *3)
			else
			end
		end
		new_phrase.join
	end

	def initialize()
		puts "The universe shimmers with anticipation as a new turtle manifests..."
	end

end

# DRIVER CODE

zeus = Puppy.new
p zeus.fetch("stick")
p zeus.speak(5)
p zeus.roll_over
p zeus.dog_years(29)
p zeus.mark_territory

gurt = Turtle.new
p gurt.talk("Hello there")