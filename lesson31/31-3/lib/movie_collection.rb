class MovieCollection
  attr_accessor :movie_list, :producer_list, :movie_wish_list

  def initialize(path)
    @movie_list = []
    @movie_wish_list = []
    @producer_list = []
    Dir.glob(path).each do |file_name|
      @movie_list <<  Movie.new(file_name)
    end
  end

  def get_producer_list
    @movie_list.each do |movie|
      @producer_list << movie.producer
    end
    @producer_list
  end

  def get_wish_movie_list(producer_name)
    @movie_list.each do |movie|
      @movie_wish_list << movie.movie_name if movie.producer?(producer_name)
    end
    @movie_wish_list
  end
end
