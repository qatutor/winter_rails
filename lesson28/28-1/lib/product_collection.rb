require_relative 'book'
require_relative 'movie'

class ProductCollection
  attr_reader :items

  def self.from_dir
    items = []

    book_file_names = Dir.glob("#{__dir__}/../data/books/*.txt")
    book_file_names.each do |file_name|
      items << Book.from_file(file_name)
    end

    movie_file_names = Dir.glob("#{__dir__}/../data/movies/*.txt")
    movie_file_names.each do |file_name|
      items << Movie.from_file(file_name)
    end

    items
  end

  def initialize
    @items = ProductCollection.from_dir
  end

  # return array of items
  def to_a
    @items.each do |item|
      item
    end
  end

  # sort by price
  def sort
    to_a.sort_by {|item| item.price}
  end

end