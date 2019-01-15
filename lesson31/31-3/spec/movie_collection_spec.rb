require 'rspec'
require_relative '../movie'

describe 'Movie' do

  before:all do
    @movie= Movie.new("#{__dir__}/fixtures/01.txt")
  end

  it '#new' do
    expect(@movie.movie_name).to eq ('Список Шиндлера')
    expect(@movie.producer).to eq ("Стивен Спилберг")
    expect(@movie.year).to eq ("Year 2017")
  end
  it '#producre?' do
    expect(@movie.producer?('Стивен Спилберг')).to eql (true)
  end
end