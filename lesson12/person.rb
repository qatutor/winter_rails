class Person

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @favourite_movie = nil
  end

  def print_name
    if what_age == "Пожилой"
      puts "#{@first_name} #{@last_name}"
    else
      puts "#{@first_name}"
    end
    puts "#{what_age}"
  end

  def what_age
    if @age > 60
      return "Пожилой"
    else
      return "Молодой"
    end
  end

  def set_favourite_movie(object_movie)
    @favourite_movie = object_movie
  end

  def get_favourite_movie
    @favourite_movie.movie_name
  end

end
