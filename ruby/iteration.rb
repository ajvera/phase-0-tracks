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