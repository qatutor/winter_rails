require_relative "movie"

movie_dir = "#{__dir__}/movie/*.txt"
all_producers = []
films = []

Dir.glob(movie_dir).each do |file_name|
  movie = Movie.new(file_name)
  all_producers << movie.producer
  films << movie
end

puts "Выберите режиссера: "
for producer in all_producers.uniq
  puts "#{producer}"
end
#ask user for input
user_choice = STDIN.gets.chomp

user_movie_wish_list = []
for film in films
  if user_choice.downcase == film.producer.downcase
    user_movie_wish_list << film.movie_name
  end
end

#display any random movies
puts "Рекомендуем фильм: #{user_movie_wish_list.sample}"
