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
  print_list(foodHash)
  foodHash
end
# output: hash


# Method to add an item to a list
# input: item name and optional quantity 
def add_item(grocHash, item, quantity=1)
# steps: take new item and new quantity and add to existing hash
	grocHash[item.to_sym] = quantity 
	grocHash
end 
# output: updated hash


# Method to remove an item from the list
# input: item name
def delete_item(grocHash, item)
	# steps: reference item to be deleted and remove from hash
	grocHash.delete(item.to_sym)
	grocHash
end
# output: updated hash

	
# Method to update the quantity of an item
# input: item name and quantity
def update_quant(grocHash, item, quantity)
	grocHash[item.to_sym] = quantity 
	grocHash
end 

# steps: reference the item and change quantity value
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
def print_list(grocHash)
# steps: iterate thru hash and print name and quantity for each key item
	grocHash.each do |item, quantity|
		puts "#{item} : #{quantity}"
	end
end

# output: no element, printed text

## DRIVER CODE ##

testList = create_list("carrots apples cereal pizza")
p add_item(testList, "fish", 3)
p delete_item(testList, "carrots")
p update_quant(testList, "pizza", 10)
print_list(testList)
