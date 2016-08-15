# Method to create a hash
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash
def make_hash(string_of_items)
  new_hash = {}
  array_of_items = string_of_items.split(' ')
  array_of_items.each do |item|
    new_hash[item] = 1
  end
  print_list(new_hash)
  # $new_hash.each do |item, quantity|
  #   p "You need #{quantity} #{item}."
  # end
end
  
# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# output:
def item_to_list(list, item, quantity=nil)
  list[item] = quantity
  p list
end

# Method to remove an item from the list
# input: item
# steps: remove item from hash
# output: updated hash with item removed
def remove_item(list, item)
  list.delete(item)
  p list
end

# Method to update the quantity of an item
# input: item and quantity pair
# steps: add a quantity to a preexisting item
# output: updated hash with new quantity
def update_quantity(list, item, quantity)
  list[item] = quantity
end

# Method to print a list and make it look pretty
# input: variable we assigned to hash
# steps: iterate through the hash and print each key value pair individually
# output: key value pairs
def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    p "You need #{quantity} #{item}."
  end
end
  

##### DRIVER CODE ######
# make_hash("carrots apples cereal pizza")
# item_to_list("mangos", 6)
# item_to_list("ice cream")
# remove_item("ice cream")
# update_quantity("carrots", 0)
# print_list($new_hash)
katys_list = make_hash("carrots apples cereal pizza")
item_to_list(katys_list, "ice cream", 10)
another_list = make_hash("cookies brownies")
item_to_list(another_list, "oranges")
