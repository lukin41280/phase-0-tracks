# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list (foodItems)
	# steps: 
  # run split method on the string to create array
	foodList = foodItems.split(' ')
	# create a hash
	foodHash = {}
	# add the items to the hash and set default quantity
  foodList.each do |item|
  	foodHash[item.to_sym] = 1
  end

  # print the list to the console [can you use one of your other methods here?]
  p foodHash
  foodHash
end
# output: hash
create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity 
# steps: take new item and new quantity and add to existing hash
# output: updated hash

# Method to remove an item from the list
# input: item name
# steps: reference item to be deleted and remove from hash
# output: updated hash

# Method to update the quantity of an item
# input: item name and quantity
# steps: reference the item and change quantity value
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate thru hash and print name and quantity for each key item
# output: no element, printed text