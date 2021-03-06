require_relative "movie"

current_path = __dir__
movie_dir = current_path + '/movies/'
#loop in the directory
all_producers = []
films = []
Dir.foreach(movie_dir) do |file_name|
  # check if .txt file
  if File.extname(file_name).eql? '.txt'
    movie = Movie.new(movie_dir + file_name)
    all_producers << movie.producer
    films << movie
  end
end

puts "Выберите режиссера: "
for producer in all_producers.uniq
  puts "#{producer}"
end
#ask user for input
user_choice = gets.chomp

user_movie_wish_list = []
for film in films
  if user_choice.eql? film.producer
    user_movie_wish_list << film.movie_name
  end
end

#display any random movies
puts "Рекомендуем фильм: #{user_movie_wish_list.sample}"

# Если мы хотим переделать эту задачу в ООП, можешь поделиться, как бы ты разбивал прогу из функционального подхода к
# ООП