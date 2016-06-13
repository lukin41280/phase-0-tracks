# Virus Predictor

# I worked on this challenge [by myself, with: Peter Duke].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# What does it do?
# Incorporating data from external source
# Why? Helps separate files into similar purpose types
# Difference between require relative/ require?
# Require relative shares the same directory path. Those files are relative to each other.
# Require is in different directory paths.


require_relative 'state_data'

class VirusPredictor

  # Setup the new instance of the class with default attributes and feeding in information from 'state data' file
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling two different methods 'predicted deaths' and 'speed of spread' with a string output
  # REFACTORING
  # Remove @state from predicted deaths and speed of spread
  # Combining the 2 methods since they have same IF conditionals
  

  private

  # private method thats using state data input and performing a calculation on number of deaths and outputting into virus effect method
  def predicted_deaths_speed(population_density, population)
    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
    

  end
  
  public

  def virus_effects
    predicted_deaths_speed(@population_density, @population)
    #speed_of_spread(@population_density)
  end

  # private method taking state data input and calculating the speed of the virus could spread
  # def speed_of_spread(population_density) #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"

  # end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, pop_data|
  state = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section
# The first syntax shows the key as a String with a "=>" to seperate the value.  The
# second, the key is a symbol.  Require_relative is used when the files share the same
# directory path.  Require is used when this is not the case and an external file is
# joined.  The best ways I have seen to iterate thru a hash are the .each and .map 
# methods.  Other loops can be used, but tit can be a bit wordy since you would need to
# set a counter to increment thru each iterable and use the counter value as the index
# in the hash.  We quickly noticed that the instance variables were duplicated in the
# parameters for each method call.  I have much more confidence working with nested 
# hashes.  Especially when the value of the parent hash was itself, a hash.