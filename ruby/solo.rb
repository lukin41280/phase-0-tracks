### JEDI CLASS ###

# make a Jedi class with:
class Jedi
	
# Characteristics
	
	#do not want to change name, species, or home planet
	attr_reader :name, :species, :home_planet
	#would like to change age and color of lightsaber
	attr_accessor :age, :saber_color
	
	def initialize (name, age)
		puts "The Force has created your Jedi..."
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

### Tester code ###

# Luke = Jedi.new("Luke", 23)
# p Luke 
# Luke.force_lift("X-wing")
# Luke.lightsaber_on
# Luke.mind_trick("release the droids and the wookie")

### User Interface ###

# create a Jedi army
def jedi_maker
	# ask how many Jedi they would like to create
	puts "How many Jedi would you like to create?"
	jedi_amount = gets.chomp.to_i
	# create as many jedi as user has provided

	# ask user for name and age
	puts "Please name your Jedi:"
	jedi_name = gets.chomp
	puts "How old is your Jedi?"
	jedi_age = gets.chomp.to_i
	# create Jedi with name and age given
	testJedi = Jedi.new(jedi_name, jedi_age)
	puts "Would you like to select your Jedi's lightsaber color? y/n"
	saber_response = gets.chomp
	# if the user wants to select color, ask them for the color, otherwise do nothing
	testJedi
end
jedi_maker