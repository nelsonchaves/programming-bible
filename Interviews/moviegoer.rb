# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10.00 : 15.00
  end

  def watch_scary_movie?
    @age >= 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member == true ? "🍿" : raise(NotMovieClubMemberError.new)
  end
end

p Moviegoer.new(21).ticket_price
#=> 15
p Moviegoer.new(65).ticket_price
#=> 10
p Moviegoer.new(21).watch_scary_movie?
#=> true
p Moviegoer.new(17).watch_scary_movie?
#=> false
p Moviegoer.new(21, member: true).claim_free_popcorn!
#=> 🍿
p Moviegoer.new(17, member: false).claim_free_popcorn!
#=> Exception was raised! (NotMovieClubMemberError)
