require_relative 'lib/movie'
require_relative 'lib/book'

#movie = Movie.new(name: 'Leon', price: 290, amount: 4)
#puts movie.info

book = Book.new({name:'book', price:200, items_left: 2}, 'Alone' , 'fantasy', 'July')
puts book.to_s

