module Check_country
  
  def will_country_get_loan?(gross_domestic_production, state_of_country)
    if gross_domestic_production < 500_000 && state_of_country == 'Developing'
      "Elegible for LOAN from International Monetary Fund or World Bank"
    else
      "Not elegible for LOAN"
    end
  end

  def will_country_get_seat_UN?(army_strength, state_of_country)
    if army_strength > 100_000 && state_of_country == 'Developed'
      "Eligible of United Nation Seat"
    else
      "Not eligible for United Nation Seat"
    end
  end

  def will_coutry_will_win?(army_strength)
    if army_strength > 200_000 
      "Country will WIN the war"
    else
      "Country will LOSE the war"
    end
  end
  
end