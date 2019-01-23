require 'rspec'
require_relative '../lib/movie_collection'

describe MovieCollection do
  it 'should create an instance variable of type Movie' do
    movie_collection = MovieCollection.new("#{__dir__}/fixtures/01.txt")
    expect(movie_collection.movie_list[0]).to be_an_instance_of(Movie)
  end

  context 'verifies an instance methods' do
    before :each do
      @movie_collection = MovieCollection.new("#{__dir__}/fixtures/*.txt")
    end
    describe '#get_producer_list' do
      it 'should contain an array of all producers' do
        expect(@movie_collection.get_producer_list).to match_array(["Роберт Земекис", "Стивен Спилберг"])
      end
    end

    describe '#get_wish_movie_list' do
      it 'returns the same result when the method is executed multiple times' do
        expect(@movie_collection.get_wish_movie_list('Стивен Спилберг')).to match_array(["Список Шиндлера"])
        expect(@movie_collection.get_wish_movie_list('Стивен Спилберг')).to match_array(["Список Шиндлера"])
      end

      it 'should create movie wish list by producer name' do
        expect(@movie_collection.get_wish_movie_list('Роберт Земекис')).to match_array(["Назад в будущее", "Форрест Гамп"])
      end
    end
  end
end
