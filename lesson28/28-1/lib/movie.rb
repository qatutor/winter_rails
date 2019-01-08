require_relative 'product'

class Movie < Product
  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp:true)
    Movie.new({name:'movie', price: file_info[4].to_i, items_left: file_info[3].to_i}, file_info[0], file_info[1],
              file_info[2])
  end
  def initialize(param, movie_name, director, movie_year)
    super(param)
    @movie_name = movie_name
    @director = director
    @movie_year = movie_year
  end

  def movie_year=(movie_year)
    @movie_year=movie_year
  end

  def to_s
    "#{@name} #{@movie_name} #{@movie_year} #{@director}  #{@price} (осталось #{@items_left})"
  end
end
