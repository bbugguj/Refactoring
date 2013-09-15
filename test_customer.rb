require "./movie"
require "./rental"
require "./customer"
require 'test/unit'

class TestCustomer < Test::Unit::TestCase

  def test_statement
    movie_1 = Movie.new('관상', NewReleasePrice.new)
    movie_2 = Movie.new('타이타닉', RegularPrice.new)
    movie_3 = Movie.new('톰과제리', ChildrensPrice.new)

    rental_1 = Rental.new(movie_1, 3)
    rental_2 = Rental.new(movie_2, 2)
    rental_3 = Rental.new(movie_3, 5)

    customer = Customer.new('jang')

    customer.add_rental rental_1
    customer.add_rental rental_2
    customer.add_rental rental_3

    assert_equal "고객 jang의 대여 기록\n\t관상\t9\n\t타이타닉\t2\n\t톰과제리\t4.5\n대여료는 15.5입니다.\n적립 포인트는 4입니다.", customer.statement
  end


end