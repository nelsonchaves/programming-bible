class ResistorColorDuo
  @colors = %w[black brown red orange yellow green blue violet grey white]
  def self.value(pair)
    @colors.index(pair[1]) + @colors.index(pair[0]) * 10
  end
end



class ResistorColorDuo
  def self.value(array)
    colors = %w[black brown red orange yellow green blue violet grey white]
    array.take(2).map {|color| "#{colors.find_index(color)}"}.join.to_i
  end
end



# This class provides a method 'value' that takes in an array of
# colors and returns the concatenated value of the first 2 of those
# colors in the resistor encoding
class ResistorColorDuo
  VALUES = { black: 0, brown: 1, red: 2, orange: 3, yellow: 4,
              green: 5, blue: 6, violet: 7, grey: 8, white: 9 }

  def self.value(colors)
    p VALUES[colors[0].to_sym]
    (@values[colors[0].to_sym].to_s + @values[colors[1].to_sym].to_s).to_i
  end
end
p ResistorColorDuo.value(%w[brown black])

class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(colors)
    colors.first(2).map { |color| COLORS.index(color) }.join.to_i
  end
end
