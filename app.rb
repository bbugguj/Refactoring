require "./movie"
require "./rental"
require "./customer"

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

puts customer.statement
