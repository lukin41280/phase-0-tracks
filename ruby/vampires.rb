puts "What is your name?"

monsterName = gets.chomp

puts "How old are you?"

monsterAge = gets.chomp.to_i

puts "Shall we order you some garlic? y or n"

monsterGarlic = gets.chomp

puts "Do you wish to enroll in life insurance? y or n"

monsterLife = gets.chomp

vampChecker = nil

if (monsterAge < 125) && (monsterGarlic == "y")
   vampChecker = "Probably not a vampire"
end
if (monsterAge > 125) && ((monsterGarlic == "n") || (monsterLife == "n"))
	vampChecker = "Probably a vampire"
end

 puts vampChecker 