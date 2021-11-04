# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  TOTAL_PRICE = 15.freeze
  DISCOUNT_PRICE = 10.freeze

  attr_reader :age, :member

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    age >= 60 ? DISCOUNT_PRICE : TOTAL_PRICE
  end

  def watch_scary_movie?
    age >= 18 ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    if member
      return "🍿"
    else
     raise NotMovieClubMemberError
    end
  end
end
