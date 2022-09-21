class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end

p h = HighScores.new([30, 50, 20, 70])
p h.scores
p h.latest
p h.personal_best
p h.personal_top_three
