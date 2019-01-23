class MovieCollection
  attr_accessor :movie_list

  def initialize(path)
    @movie_list = []
    Dir.glob(path).each do |file_name|
      @movie_list <<  Movie.new(file_name)
    end
  end

  def get_producer_list
    producer_list = []
    @movie_list.each do |movie|
      producer_list << movie.producer
    end
    producer_list.uniq
  end

  def get_wish_movie_list(producer_name)
    wish_list = []
    @movie_list.each do |movie|
      wish_list << movie.movie_name if movie.producer?(producer_name)
    end
    wish_list
  end
end
