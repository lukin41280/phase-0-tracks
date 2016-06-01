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

# print hash
p client_data
# prompt for any updates to a key and convert to a symbol

# prompt for updated value to the key

# use responses to update the hash, if "none" is entered, do not change
	# anything 

# print hash

