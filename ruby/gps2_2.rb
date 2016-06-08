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
testList = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity 
def add_item(grocHash, item, quantity=1)
# steps: take new item and new quantity and add to existing hash
	grocHash[item.to_sym] = quantity 
	grocHash
end 
# output: updated hash
p add_item(testList, "fish", 3)

# Method to remove an item from the list
# input: item name
def delete_item(grocHash, item)
	# steps: reference item to be deleted and remove from hash
	grocHash.delete(item.to_sym)
	grocHash
end
# output: updated hash
p delete_item(testList, "carrots")

# Method to update the quantity of an item
# input: item name and quantity
# steps: reference the item and change quantity value
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate thru hash and print name and quantity for each key item
# output: no element, printed text