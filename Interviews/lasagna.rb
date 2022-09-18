class Lasagna
  
  EXPECTED_MINUTES_IN_OVEN = 40
  PREPARE_MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    PREPARE_MINUTES_PER_LAYER * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end


lasagna = Lasagna.new
p lasagna.remaining_minutes_in_oven(10)
# => 30
p lasagna.preparation_time_in_minutes(2)
# => 4
p lasagna.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)
# => 26
