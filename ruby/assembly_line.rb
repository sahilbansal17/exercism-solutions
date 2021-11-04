class AssemblyLine
  attr_reader :speed
  CARS_PER_HOUR = 221.freeze
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production_rate = 0
    success_rate = 0

    if speed <= 4
      success_rate = 1
    elsif speed <= 8
      success_rate = 0.90
    elsif speed == 9
      success_rate = 0.80
    elsif speed == 10
      success_rate = 0.77
    end

    success_rate * CARS_PER_HOUR * speed
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end
end
