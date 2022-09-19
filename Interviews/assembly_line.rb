class AssemblyLine

  NUMBER_OF_CARS = 221

  def initialize(speed)
    raise ArgumentError, 'speed must be between 1 and 10' unless speed.between? 1, 10
    @speed = speed
  end

  def production_rate_per_hour
    @speed * NUMBER_OF_CARS * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private

  def success_rate
    case @speed
    when 1..4
      1
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end

p AssemblyLine.new(6).production_rate_per_hour
p AssemblyLine.new(6).working_items_per_minute

=begin
In this exercise you'll be writing code to analyze the production of an assembly line in a car factory. The assembly line's speed can range from 0 (off) to 10 (maximum).

At its slowest speed (1), 221 cars are produced each hour. The production increases linearly with the speed. So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. However, higher speeds increase the likelihood that faulty cars are produced, which then have to be discarded. The following table shows how speed influences the success rate:

1 to 4:   100% success rate.
5 to 8:   90% success rate.
9:        80% success rate.
10:       77% success rate.
=end
