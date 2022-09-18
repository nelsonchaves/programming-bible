class Suitcase
  def initialize
    @locked = false
  end

  def locked? # Query methods should be named with a trailing `?`
    @locked
  end

  def lock! # Methods which mutate state should have trailing `!`
    @locked = true
  end
end

suitcase = Suitcase.new
p suitcase.locked? # false
p suitcase.lock!
p suitcase.locked? # true
