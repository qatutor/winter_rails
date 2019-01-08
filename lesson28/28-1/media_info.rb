require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/product_collection'

# movie = Movie.new({name: 'movies', price: 290, items_left: 4}, 'Леон', '1994', 'реж. Люк Бессон')
# movie.movie_year = '2001'
# puts movie
#
 book = Book.new({name:'book', price:200, items_left: 2}, 'Alone' , 'fantasy', 'July')
# book.book_type = 'History'
# book.update(name:'new book', price:150)
# puts book

#product = Product.new({name:'book', price:200, items_left: 2})


book = Book.from_file("#{__dir__}/data/books/1.txt")
#puts book

movie = Movie.from_file("#{__dir__}/data/movies/1.txt")
#puts movie

product_collection = ProductCollection.new
puts product_collection.to_a.inspect
puts product_collection.sort
