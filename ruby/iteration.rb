#write a method that takes a block - release 0
def i_dont_know 
	puts "I don't know what to say!"
	yield
end


i_dont_know {puts "I don't either?!?!?"}

#Use .map! and .each on an array and hash - release 1
fruits = ["banana","watermelon","mango","lyche","rambutan"]
p fruits

superheroes = {
	"Clark Kent" => "Superman", 
	"Bruce Wayne" => "Batman!", 
	"Diana Prince" => "Wonder Woman", 
	"Bruce Banner" => "The Hulk"
}

fruits.each do |fruit|
	puts "I love #{fruit}s!"
end

p fruits

fruits.map! { |fruit|
	fruit << "s!"
}

p fruits

p superheroes
superheroes.each do |secret,hero| 
	puts "#{hero} is really #{secret}! Please don't tell anyone..."
end

p superheroes

#Release 2: Use the Documentation
nineties_toys = ["silly putty", "gak", "ferbie", "creepy", "tomigachi"]
dream_jobs = ["professional nacho eater", "assistant napper", "pizza consultant", "baker"]
prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
shades_of_green = ["dark","forest","lime","vomit"]

regrets = {
    16 => "everything",
    20 => "being self-conscious",
    8 => "not getting a tatoo"
}
expenses = {
  groceries: 500,
  bills: 200,
  donations: 200,
  entertainment: 150
}
prefrences = {
  likes_silence: true,
  "likes turtles" => true,
  likes_injustice: false,
  "likes_eating_gross_stuff" => false
}
class_examples = {
  boolean: 9 < 10,
  string: "Thanks for all the fish",
  fixnum: 5,
  float: 597.23918
}

# 1. delete based on condition
#array
p nineties_toys
nineties_toys.delete_if { |toy| toy.include?("g") }
p nineties_toys
#hash
p regrets
regrets.delete_if {|age, regret| age > 18 }
p regrets

#2. filter based on condition
#array
p dream_jobs
dream_jobs.select! { |job| job.length < 18 }
p dream_jobs
#hash
p expenses
expenses.select! { |expense, cost| cost > 200 }
p expenses

#3. filter based on condition
#array
p prime_numbers
prime_numbers.keep_if do |num|
  num.even?
end
p prime_numbers
#hash
p prefrences
prefrences.keep_if do |pref, bool|
  bool == true
end
p prefrences

#4. remove until condition is false
#array
p shades_of_green
shades_of_green.drop_while do |shade|
 shade.length < 5
end
p shades_of_green
#hash
p class_examples
class_examples.drop_while do |class, ex|
  ex != true
end
p class_examples