class Santa

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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

	### update age by 1 year ###
	def celebrate_birthday
		@age = @age + 1
	end
    
    ### update reindeer array to move reindeer name to last index ###
	def get_mad_at(reindeer_name)
		puts "Santa is mad at #{reindeer_name}"
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
	end
	
	### setter method for @gender ###
	def gender=(gender_change)
		@gender = gender_change
	end

	### getter methods to access @age and @ethnicity
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

### Driver Tester ###
Nick = Santa.new("male", "hobbit")
#Nick.speak
#Nick.eat_milk_and_cookies("Oreo")
#p Nick.celebrate_birthday
#Nick.get_mad_at("Vixen")
Nick.gender = "female"
p Nick
p Nick.age
p Nick.ethnicity

### Loop to add new Santas to an array ###
santas = []

genders = ["male", "female", "agender", "demigender", "gender fluid", "bigender"]
races = ["hobbit", "orc", "human", "goblin", "dwarf", "elf"]

# genders.length.times do |claus|
# 	santas << Santa.new(genders[claus], races[claus])
# 	puts "Number #{claus+1},"
# 	puts "#{santas[claus].santa_type}"
# end


