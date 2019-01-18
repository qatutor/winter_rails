require 'rspec'
require_relative '../lib/movie_collection'

describe MovieCollection do
  it 'should create instance variables' do
    movie_collection = MovieCollection.new("#{__dir__}/fixtures/01.txt")
    expect(movie_collection.movie_list[0]).to be_an_instance_of(Movie)
    expect(movie_collection.movie_wish_list).to match_array ([])
    expect(movie_collection.producer_list).to match_array([])
  end

  it 'should create movie wish list by producer name' do
    movie_collection = MovieCollection.new("#{__dir__}/fixtures/*.txt")
    expect(movie_collection.get_wish_movie_list('Роберт Земекис')).to match_array(["Назад в будущее", "Форрест Гамп"])
  end
end
