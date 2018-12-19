require './person.rb'
require './movie.rb'

record1 = Person.new("Марина", "Test", 66)
movie = Movie.new("Стивен Спилберг", "Список Шиндлера")
record1.set_favourite_movie(movie)

puts "#{record1.print_name}"
puts "#{record1.get_favourite_movie}"


record2 = Person.new("Роберт", "Test", 65)
movie = Movie.new("Роберт Земекис", "Форрест Гамп")
record2.set_favourite_movie(movie)

puts "#{record2.print_name}"
puts "#{record2.get_favourite_movie}"

record3 = Person.new("Джо", "Test", 24)
movie = Movie.new("Роберт Земекис", "Назад в будущее")
record3.set_favourite_movie(movie)

puts "#{record3.print_name}"
puts "#{record3.get_favourite_movie}"
