require_relative 'country_module'
class Country

  include Check_country

  attr_reader :country_name, :population, :gross_domestic_production, :state_count, :army_strength, :state_of_country

  def initialize(country_name, population, gross_domestic_production, state_count, army_strength, state_of_country)
    @country_name = country_name
    @population = population
    @gross_domestic_production = gross_domestic_production
    @state_count= state_count
    @army_strength = army_strength
    @state_of_country = state_of_country
  end

  def print_data
    puts "
    Country : #{@country_name}\n
    Population : #{@population}\n 
    GDP : #{@gross_domestic_production}\n 
    States : #{@state_count} \n
    Army Strength : #{@army_strength}\n 
    State Of Country : #{@state_of_country}\n"
  end
end