require_relative 'country_module'
class Country

  include Check_country

  def initialize(country_name ,population, gross_domestic_production, states, army_strength, state_of_country)
    @country_name = country_name
    @population = population
    @gross_domestic_production = gross_domestic_production
    @states = states
    @army_strength = army_strength
    @state_of_country = state_of_country
  end

  def get_name
    @country_name
  end

  def get_population
    @population
  end

  def gross_domestic_production
    @gross_domestic_production
  end

  def states
    @states
  end

  def army_strength
    @army_strength
  end

  def state_of_country
    @state_of_country
  end

  def print_data
    puts "
    Country : #{@country_name}\n
    Population : #{@population}\n 
    GDP : #{@gross_domestic_production}\n 
    States : #{@states} \n
    Army Strength : #{@army_strength}\n 
    State Of Country : #{@state_of_country}\n"
  end
end