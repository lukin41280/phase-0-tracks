class Santa

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def santa_type
		puts " Santa is a(n) #{@gender} #{@ethnicity}"
	end
	
end

# Nick = Santa.new

# Nick.speak

# Nick.eat_milk_and_cookies("Oreo")

santas = []

genders = ["male", "female", "agender", "demigender", "gender fluid", "bigender"]
races = ["hobbit", "orc", "human", "goblin", "dwarf", "elf"]

genders.length.times do |claus|
	santas << Santa.new(genders[claus], races[claus])
	puts "Number #{claus+1},"
	puts "#{santas[claus].santa_type}"
end

