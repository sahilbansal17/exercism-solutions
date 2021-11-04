class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    2 * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    2 * number_of_layers + actual_minutes_in_oven
  end
end
