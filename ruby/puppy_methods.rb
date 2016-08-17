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

zeus = Puppy.new
p zeus.fetch("stick")
p zeus.speak(5)
p zeus.roll_over
p zeus.dog_years(29)
p zeus.mark_territory