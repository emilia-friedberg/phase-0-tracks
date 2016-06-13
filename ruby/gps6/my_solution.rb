# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Require relative allows you to access or insert information from another file into a program
# without needing to have the actual code inside of the program you're working on.
# You can use the name of the file or its relative path to access it.
# Require is used for accessing features and larger libraries or gems of methods
# that you have not necessarily written yourself.

# require_relative 'state_data'

class VirusPredictor

  # initializes the class instance with attributes for state, population, and population density, which are parameters for the method.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # a method that calls the methods predicted_deaths and speed_of_spread together, takes no parameters
  def print_virus_effects
    predicted_deaths
    months_to_kill
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@number_of_months} months.\n\n"

  end

  private

  # takes parameters for population density, population, and state, and calculates number of deaths in a direct proportion to population density

  # attempted to write method to condense elsif statements for predicted deaths method - WORK IN PROGRESS
  
  # def predicted_deaths
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   else
  #     number_of_deaths = (@population * (@population_density/500)).floor
  #   end
  #   print "NEW METHOD #{@state} will lose #{number_of_deaths} people in this         outbreak"
  # end

    
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

  end

  # calculates length of time in months that it will take for virus to spread through the state, inversely proportional to population density
  def months_to_kill
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @number_of_months = 0.0

    if @population_density >= 200
      @number_of_months += 0.5
    elsif @population_density >= 150
      @number_of_months += 1
    elsif @population_density >= 100
      @number_of_months += 1.5
    elsif @population_density >= 50
      @number_of_months += 2
    else
      @number_of_months += 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.print_virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
# =end

# STATE_DATA.each do |state_name, data|
#   state = VirusPredictor.new(state_name, data[:population_density], data[:population])
#   state.print_virus_effects
# end


#=======================================================================
# Reflection Section

