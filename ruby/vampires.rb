puts "What is your name?"

monsterName = gets.chomp

puts "How old are you?"

monsterAge = gets.chomp.to_i

puts "Shall we order you some garlic? y or n"

monsterGarlic = gets.chomp

puts "Do you wish to enroll in life insurance? y or n"

monsterLife = gets.chomp

vampChecker = nil

if (monsterAge < 125) && (monsterGarlic != "n")
   vampChecker = "Probably not a vampire"
elsif (monsterAge > 125) && ((monsterGarlic == "n") || (monsterLife == "n"))
	vampChecker = "Probably a vampire"
elsif (monsterName == "Drake Cula") || (monsterName == "Tu Fang")
	vampChecker = "Definately a vampire"
else
	vampChecker = "Results inconclusive"
end

 puts vampChecker 