require_relative 'dataset' # Data of countries
require_relative 'country' # Country Class

def main
  $countries_data.each do |country, data|
    country = Country.new(*data)

    puts country.print_data
    puts country.will_country_get_loan?(country.gross_domestic_production, country.state_of_country)
    puts country.will_country_get_seat_UN?(country.army_strength, country.state_of_country)
    puts country.will_country_win?(country.army_strength)
    puts "----------------------------------------------------------------------------------------"

  end
end

main