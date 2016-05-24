puts "What is your hamsters name?"

hamster_name = gets.chomp

puts "What is the hamster's volume level? (1-10)"

hamster_vol = gets.chomp.to_f

puts "What is the hamsters fur color?"

hamster_fur = gets.chomp

puts "Is hamster a good canidate for adoption? (y or n)"

adoption = gets.chomp

if adoption == "y"
	adoption = true
else
	adoption = false 
end

puts "What is the hamsters age?"

age = gets.chomp

if age.nil?
	age = nil
else 
	age.to_i
end

puts "Hamster's name: #{hamster_name}"
puts "Hamster's volume: #{hamster_vol}"
puts "Hamster's fur color: #{hamster_fur}"
puts "Good canidate? #{adoption}"
puts "Hamster's age: #{age}"