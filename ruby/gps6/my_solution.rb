# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_realative makes code/methods from separate files 
# accessible within the file it is being called in.
# require is typically used for pre-existing classes (e.g. MATH) 
# require_relative differs in that you can provide a relative path
# for a file/class you or a collaborator has created and included
# within the same working directory
require_relative 'state_data'

class VirusPredictor
  # Creating an instance of VirusPredictor while passing 3 
  # parameters and setting them as instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Returns a call to predicted_deaths & speed of spread
  # each of these method calls is passed some instance variables
 def virus_effects
    predicted_deaths
    speed_of_spread
    output
  end

  def self.report(hash)
    hash.each do |state, pop_data|
      new_state = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
      new_state.virus_effects
    end
  end

  # Originally combined predicted_deaths & speed_of_spread but refactored for release 8
  # def death_and_speed(population_density, population, state)
  #   # combining predicted_deaths and speed_of_spread instance methods
  #   speed = 0.0
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #     speed += 1
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #     speed += 2.0
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #     speed += 2.5
  #   end
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  # end
  private
  # Returns first half of virus effects print statement that describes 
  # number of deaths per state number of deaths is calculated based on 
  # popluation density and an arbitrary weight rounded down.
  # when refactoring we decided to remove print statements (separation of concerns)

  def predicted_deaths
  # predicted deaths is solely based on population density

  if @population_density >= 200
    death_ratio = 0.4
  elsif @population_density >= 150
    death_ratio = 0.3
  elsif @population_density >= 100
    death_ratio = 0.2
  elsif @population_density >= 50
    death_ratio = 0.1
  else
    death_ratio = 0.05
  end
  @number_of_deaths = (@population * death_ratio).floor
  # print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # Calculates speed of spread based on population density and 
  # prints second half of virus effects statement to screen
  # when refactoring we decided to remove print statements (separation of concerns)

  def speed_of_spread#in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0
    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end
  end
  
  def output
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

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
VirusPredictor.report(STATE_DATA)

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# - Assigning a value to a key with a hash rocket "=>" vs using symbols "key:"
# What does require_relative do? How is it different from require?
# - require_relative makes code/methods from another class accessible and is called using a relative path.
# - require does the same but is most often used for pre-existing classes such as Math. Can be used to call
# - classes that are newly created but requires an absolute path. 
# What are some ways to iterate through a hash?
# - hash.each do |key, value|, hash.length.times do |i|
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# -no need to pass arguments to the methods within virus_effects
# -instance variables are accessible to instance methods without passing them.
# What concept did you most solidify in this challenge?
# - Using class methods to execute a method on each instance of a given class.