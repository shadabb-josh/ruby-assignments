require_relative 'dataset' # Data of countries
require_relative 'country' # Country Class

def main

  countries_array = [] # array to store each country object

  $countries_data.each do |country, data|
    country_obj = Country.new(data[0],data[1],data[2],data[3],data[4],data[5])
    countries_array << country_obj
  end

  countries_array.each do |country|
    
    puts country.print_data
    puts country.will_country_get_loan?(country.gross_domestic_production, country.state_of_country)
    puts country.will_country_get_seat_UN?(country.army_strength, country.state_of_country)
    puts country.will_coutry_will_win?(country.army_strength)
    puts "----------------------------------------------------------------------------------------"

  end
  
end

main