# Two-fer or 2-fer is short for two for one. One for you and one for me.
# "One for X, one for me."
# When X is a name or "you".
# If the given name is "Alice", the result should be "One for Alice, one for me." If no name is given, the result should be "One for you, one for me."

class TwoFer
  def self.two_fer(name = "you")
    "One for #{name}, one for me."
  end
end


p TwoFer.two_fer()

# ///////// Different Way of doing it also

class TwoFerTest
  def initialize(name="you")
    @name = name
  end

  def two_fer
    return "One for #{@name}, one for me."
  end
end

p TwoFerTest.new().two_fer
