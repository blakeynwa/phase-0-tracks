# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #initializes new instance for state data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #determines predicted death (specific number of people) and 
  #speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #takes all three instance variables and returns number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes in population density and state, returns the speed of death
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

STATE_DATA.each do | k, v | 
  state = VirusPredictor.new(k, v[:population_density], v[:population])
  state.virus_effects
end




#REFLECT
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
STATE_DATE is a constant, meaning the value is supposed to remain constant.

What does require_relative do? How is it different from require?
require accesses built in ruby modules
require_relative allows you to load a file that's relative (in the same
directory) as your current file
What are some ways to iterate through a hash?
There's a number of ways... each, each_key, each_value, each_pair
When refactoring virus_effects, what stood out to you about the variables, if anything?
The number of times the variables were written out was redundant.
What concept did you most solidify in this challenge?
I solidified iterating through data structures. It was really helpful
to have our pair answer necessary questions and speak out our thoughts
to help us picture what we needed to do. 

=end

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
 #initializes new instance for state data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section