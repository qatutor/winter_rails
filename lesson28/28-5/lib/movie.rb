require_relative 'product'

class Movie < Product
  attr_accessor :movie_year, :director, :movie_name

  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp: true)
    Movie.new({ product_name: 'movie',
                      price: file_info[3].to_i,
                      items_left: file_info[4].to_i,
                      movie_name: file_info[0],
                      director: file_info[1],
                      movie_year: file_info[2]
                    })
  end

  def initialize(param)
    super(param)
    @movie_name = param[:movie_name]
    @director = param[:director]
    @movie_year = param[:movie_year]
  end

  def update(param)
    super(param)
    @movie_name = param[:movie_name]
    @director = param[:director]
    @movie_year = param[:movie_year]
  end

  def to_s
    super("#{@movie_name} #{@movie_year} #{@director}")
  end
end
