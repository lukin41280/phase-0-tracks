# DESIGNER HASH

# create empty hash
client_data = {}

# propmt user for name, age, number of rooms, favorite color scheme, 
	# decor theme, will be financing?, return client?
	# and convert data types when necessary
puts "What is client name?"
nameClient = gets.chomp

puts "What is client age?"
ageClient = gets.chomp.to_i 

puts "How many rooms will be decorated?"
roomsClient = gets.chomp.to_i

puts "What is the client favorite color scheme?"
colorClient = gets.chomp

puts "What is client preferred decor theme?"
decorClient = gets.chomp

puts "Will client be financing payment? True or False"
financeClient = gets.chomp.downcase
if financeClient == "true"
	financeClient = true
else
	financeClient = false
end

puts "Is this a returning client? True or False"
returningClient = gets.chomp.downcase
if returningClient == "true"
	returningClient = true
else
	returningClient = false
end

# add responeses into empty hash
client_data[:name] = nameClient
client_data[:age] = ageClient
client_data[:num_rooms] = roomsClient
client_data[:fav_color] = colorClient
client_data[:fav_decor] = decorClient
client_data[:financing?] = financeClient
client_data[:return_client?] = returningClient

# print hash
p client_data

# prompt for any updates to a key and convert to a symbol
puts "Are there any changes that need to be made?  If no, type 'none'"
updateChanges = gets.chomp

# if changes are to be made, prompt for updated value to the key.  If none is
	# entered, do nothing.  For everything else, update hash with response 
	# variables and print updated hash
if updateChanges != "none"
	puts "What category needs to change?"
	keyToChange = gets.chomp.to_sym
	puts "What is the new information for this category?"
	if keyToChange == :num_rooms || keyToChange == :age
		valueToChange = gets.chomp.to_i
	elsif keyToChange == :financing? || keyToChange == :return_client?
		valueToChange = gets.chomp.downcase
		if valueToChange == "true"
			valueToChange = true
		else
			valueToChange = false
		end
	else
		valueToChange = gets.chomp
	end
	client_data[keyToChange] = valueToChange
	p client_data
end



