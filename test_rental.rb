require "./rental.rb"
require "./movie.rb"
require "test/unit"

class TestRental < Test::Unit::TestCase
  def test_charge
  	movie = Movie.new('관상', Movie::NEW_RELEASE)
  	rental = Rental.new(movie, 3)
  	assert_equal 9, rental.charge  	
  end
end