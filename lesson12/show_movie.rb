
require './movie.rb'

puts "What is the name of your favourite producer? "

input_producer_name = gets.chomp
movie_list = []

for each in 1..3 do
  puts "What is the name of favourite movie that producer? "
  input_movie_name = gets.chomp
  movie_list << Movie.new(input_producer_name, input_movie_name)
end

comp_advice = movie_list.sample

puts "Recommended movie is:  #{comp_advice.get_movie_name}"
puts "The producer is:  #{comp_advice.get_producer_name}"
