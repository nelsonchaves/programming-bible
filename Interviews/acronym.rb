# Version 1
# class Acronym
#   def self.abbreviate(phrase)
#     phrase.split(/ |-/).map { |letter| letter[0] }.join.upcase
#   end
# end
#
# p Acronym.abbreviate("Complementary metal-oxide semiconductor")

# Version 2
module Acronym
  extend self
  def abbreviate(phrase)
    phrase.scan(/\b\w/).join.upcase
  end
end

p Acronym.abbreviate("Complementary metal-oxide semiconductor")
