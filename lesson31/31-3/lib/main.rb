require_relative "movie"
require_relative 'movie_collection'

movie_dir = "#{__dir__}/movie/*.txt"
movie_collection = MovieCollection.new(movie_dir)
all_producers = movie_collection.get_producer_list

puts "Выберите режиссера: "
for producer in all_producers.uniq
  puts "#{producer}"
end
#ask user for input
user_choice = STDIN.gets.chomp

puts "Рекомендуем фильм: #{movie_collection.get_wish_movie_list(user_choice).sample}"
