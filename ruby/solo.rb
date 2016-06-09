### JEDI CLASS ###

# make a Jedi class with:
class Jedi
	
# Characteristics
	
	#do not want to change name, species, or home planet
	attr_reader :name, :species, :home_planet
	#would like to change age and color of lightsaber
	attr_accessor :age, :saber_color
	
	def initialize (name, age)
		puts "The Force has created your Jedi knight"
		# create species, planets, and lightsaber colors
		species = ["Human", "Bothan", "Twi'lek", "Wookie", "Rodian", "Nautolan"]
		planets = ["Tatooine", "Naboo", "Hoth", "Coruscant", "Bespin", "Endor", "Alderaan"]
		colors = ["blue", "green", "orange", "yellow", "purple"]
		# Name that can vary
		@name = name
		# Age that can vary
		@age = age
		# Species that will be assigned randomly
		@species = species.sample
		# Home planet that can be assigned randomly
		@home_planet = planets.sample
		# Lightsaber color that can be assigned randomly
		@saber_color = colors.sample
	end

# Abilities

	# Levitate an object
	def force_lift(object)
		puts "The #{object} was lifted by the Force"
	end
	# Turn on lightsaber and remark on its color
	def lightsaber_on
		puts "#{@name} turned on his #{@saber_color} lightsaber"
	end
	# Mind trick on someone with a saying
	def mind_trick(saying)
		puts "I will #{saying}"
	end
	
end

#print the attributes of each Jedi created
def jedi_printer(arrayOfJedis)
	arrayOfJedis.each do |jediUnit|
		puts "#{jediUnit.name}, from #{jediUnit.home_planet}, is a(n) #{jediUnit.age} year old"
		puts "--#{jediUnit.species} who wields a #{jediUnit.saber_color} lightsaber"
	end
end

### Tester code ###

# Luke = Jedi.new("Luke", 23)
# p Luke 
# Luke.force_lift("X-wing")
# Luke.lightsaber_on
# Luke.mind_trick("release the droids and the wookie")

### User Interface ###

# create a Jedi army
jediArray = []
# ask how many Jedi they would like to create
puts "How many Jedi would you like to create?"
jediAmount = gets.chomp.to_i
# create as many jedi as user has provided
jediAmount.times do |jediUnit|
	# ask user for name and age
	puts "Please name your Jedi:"
	jediName = gets.chomp
	puts "How old is your Jedi?"
	jediAge = gets.chomp.to_i
	# create Jedi with name and age given
	jediUnit = Jedi.new(jediName, jediAge)
	puts "Would you like to select your Jedi's lightsaber color? y/n"
	saberResponse = gets.chomp
	# if the user wants to select color, ask them for the color, otherwise do nothing
	if saberResponse == "y"
		puts "Please enter a color"
		jediUnit.saber_color = gets.chomp
	end
	# add new Jedi to the Jedi army
	jediArray << jediUnit
	# inform user that Jedi is complete
	puts "Jedi completed"
end
# for each jedi created, print out their attributes
# see jedi_printer method above
puts "The #{jediArray.size} Jedi you created are:"
jedi_printer(jediArray)

