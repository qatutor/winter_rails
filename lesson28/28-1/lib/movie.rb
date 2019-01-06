require_relative 'product'

class Movie < Product
  def initialize(param, movie_name, movie_year, director)
    super(param)
    @movie_name = movie_name
    @movie_year = movie_year
    @director = director
  end
end