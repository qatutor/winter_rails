require_relative 'book'
require_relative 'movie'
require_relative 'cd'

class ProductCollection
  attr_reader :items

  def self.from_dir(dir_path)
    items = []

    book_file_names = Dir.glob("#{dir_path}/data/books/*.txt")
    book_file_names.each do |file_name|
      items << Book.from_file(file_name)
    end

    movie_file_names = Dir.glob("#{dir_path}/data/movies/*.txt")
    movie_file_names.each do |file_name|
      items << Movie.from_file(file_name)
    end

    cd_file_names = Dir.glob("#{dir_path}/data/movies/*.txt")
    cd_file_names.each do |file_name|
      items << CD.from_file(file_name)
    end

    items
  end

  def initialize(dir_path)
    @items = ProductCollection.from_dir(dir_path)
  end

  # return array of items
  def to_a
    @items.each do |item|
      item.to_s
    end
  end

  # sort by price
  def sort
    to_a.sort_by {|item| item.price}
  end
end