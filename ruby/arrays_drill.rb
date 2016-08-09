def add_to_array(a,b)
	a << b
end

p add_to_array([],"an item")
p add_to_array(["a","b",8],true)

def build_array(x,y,z)
	new_array = []
	new_array << x << y << z
	p new_array
end

build_array(5,"entropy", 85.978)

practice = []
p practice

practice << "dog" << 5 << 3.3 << (5>10) << dog = []
p practice

dog << "4"
p practice

practice.delete_at(2)
p practice

practice.insert(2, "ruby")
p practice

practice.delete(practice.first)
p practice

p "The practice array contains the integer 5: #{practice.include?(5)}"

practice_2=["ruby" , 3, 3>1]
p practice_2

combo_array = practice + practice_2
p combo_array