class Santa

	### refactor getters(age, ethnicity) and setter(gender) ###
	# added age to accessor in order to change in santa_builder method
	# and added reindeer_ranking to reader to be able to print
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

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
	# def gender=(gender_change)
	# 	@gender = gender_change
	# end

	### getter methods to access @age and @ethnicity
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end

### Driver Tester ###
# Nick = Santa.new("male", "hobbit")
# #Nick.speak
# #Nick.eat_milk_and_cookies("Oreo")
# #p Nick.celebrate_birthday
# #Nick.get_mad_at("Vixen")
# Nick.gender = "female"
# p Nick
# puts "Nick Santa's age is #{Nick.age}" 
# puts "Nick Santa's race is #{Nick.ethnicity}"

### Loop to add new Santas to an array ###
#santas = []

#genders = ["male", "female", "agender", "demigender", "gender fluid", "bigender"]
#races = ["hobbit", "orc", "human", "goblin", "dwarf", "elf"]

# genders.length.times do |claus|
# 	santas << Santa.new(genders[claus], races[claus])
# 	puts "Number #{claus+1},"
# 	puts "#{santas[claus].santa_type}"
# end

### Build Many Many Santas ###

def santa_builder(santa_amount)
	# make a counter to keep track of # of santas when printing
	counter = 1
	santa_amount.times do |santa|
		# move sample arrays into method
		genders = ["male", "female", "agender", "demigender", "gender fluid", "bigender"]
		races = ["hobbit", "orc", "human", "goblin", "dwarf", "elf"]
		# create a new Santa with random gender/race by using .sample
		santa = Santa.new(genders.sample, races.sample)
		# create a random age
		santa.age = rand(140)
		puts "Santa #{counter} is a(n) #{santa.gender} #{santa.ethnicity} who is #{santa.age} years old"
		puts "The list of favorite reindeers is as follows:"
		p santa.reindeer_ranking
		counter += 1
	end
end

santa_builder(100)


