class Movie
  attr_accessor :movie_name, :producer, :year

def initialize(file_path)
  file_text = File.readlines(file_path)
  @movie_name = file_text[0].chomp
  @producer = file_text[1].chomp
  @year = file_text[2].chomp
end

  def producer?(name)
    name.downcase == @producer.downcase
  end
end
