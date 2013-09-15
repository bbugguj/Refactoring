require "./movie"
require "./rental"
require "./customer"
require 'test/unit'

class TestCustomer < Test::Unit::TestCase
  def test_customer_statement
    m1 = Movie.new('관상', Movie::NEW_RELEASE)
    m2 = Movie.new('타이타닉', Movie::REGULAR)
    m3 = Movie.new('톰과제리', Movie::CHILDRENS)

    c = Customer.new('jang')

    c.add_rental Rental.new(m1, 3)
    c.add_rental Rental.new(m2, 2)
    c.add_rental Rental.new(m3, 5)

    assert_equal "고객 jang의 대여 기록\n\t관상\t9\n\t타이타닉\t2\n\t톰과제리\t4.5\n대여료는 15.5입니다.\n적립 포인트는 4입니다.", c.statement
  end
end