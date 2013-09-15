require "./movie"
require "./rental"
require "./customer"

m1 = Movie.new('관상', Movie::NEW_RELEASE)
m2 = Movie.new('타이타닉', Movie::REGULAR)
m3 = Movie.new('톰과제리', Movie::CHILDRENS)

c = Customer.new('jang')

c.add_rental Rental.new(m1, 3)
c.add_rental Rental.new(m2, 2)
c.add_rental Rental.new(m3, 5)

puts c.statement
