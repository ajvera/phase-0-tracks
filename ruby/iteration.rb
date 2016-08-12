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


regrets = {
    16 => "everything",
    20 => "being self-conscious",
    8 => "not getting a tatoo"
}

# 1. Found an array method based on a condition:
p nineties_toys

nineties_toys.delete_if { |toy| 
    toy.include?("g")
}

p nineties_toys


p regrets

regrets.delete_if {|age, regret|
    age > 18
}

p regrets

#2.
#array
p nineties_toys

nineties_toys.select! { |toy| 
    toy.length < 7
}

p nineties_toys


#hash
p regrets

regrets.select! { |age, reret| 
    age > 18
}

p regrets



#Finding a new method to do what we did in number 2


#4.
p nineties_toys

nineties_toys.keep_if { |toy|
    toy.start_with?("c")
}

# Find a method that will not return creepy when creepy is after ferbie in the array

p nineties_toys