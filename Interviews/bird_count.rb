class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count{ |bird| bird >= 5 }
  end

  def day_without_birds?
    @birds_per_day.include?(0)
  end
end

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
p bird_count.yesterday
p bird_count.total
p bird_count.busy_days
p bird_count.day_without_birds?
