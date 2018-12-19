class Movie

def initialize(file_path)
  @movie_name
  @producer
  @year
  save_movie_info(file_path)
end

def save_movie_info(file_path)
  file = File.new(file_path, 'r:UTF-8')
  file_text = file.readlines
  file.close
  @movie_name = file_text[0].chomp
  @producer = file_text[1].chomp
  @year = file_text[2].chomp
end


def get_movie_name
  @movie_name
end

def get_producer
  @producer
end

def get_year
  @year
end

def get_movie_info
  @movie_name
  @producer
  @year
end

end
