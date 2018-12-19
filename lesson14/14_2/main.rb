require_relative "movie"

current_path = File.dirname(__FILE__)
movie_dir = current_path + '/movie/'
#loop in the directory
all_producers = []
films = []
Dir.foreach(movie_dir) {|file_name|
                      # check if .txt file
                      if File.extname(file_name).eql? '.txt'
                          movie = Movie.new(movie_dir + file_name)
                          all_producers << movie.get_producer
                          films << movie
                      end }

puts "Выберите режиссера: "
for producer in all_producers.uniq
  puts "#{producer}"
end
#ask user for input
user_choice = gets.chomp

user_movie_wish_list = []
for film in films
  if user_choice.eql? film.get_producer
    user_movie_wish_list << film.get_movie_name
  end
end

#display any random movie
puts "Рекомендуем фильм: #{user_movie_wish_list.sample}"
