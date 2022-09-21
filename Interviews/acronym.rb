class Acronym
  def self.abbreviate(str)
    str.split(/ |-/).map { |s| s[0] }.join.upcase
  end
end
p Acronym.abbreviate("Complementary metal-oxide semiconductor")
