require 'pry'
require_relative './book'
require_relative './author'

george_orwell = Author.new("George Orwell")
robert_kiyosaki = Author.new("Robert Kiyosaki")

george_orwell.write_book("Animal Farm", rand(29966))
george_orwell.write_book("1984", rand(29966))
robert_kiyosaki.write_book("Rich Dad Poor Dad", rand(29966))
robert_kiyosaki.write_book("Cashflow Quadrant", rand(29966))

Author.all 

binding.pry
