require_relative 'book'
require_relative 'movie'
require_relative 'cd'

class ProductCollection
  attr_accessor :items
  TYPES = [
    { dir: "cd", class: CD },
    { dir: "books", class: Book },
    { dir: "movies", class: Movie }
  ]

  def self.from_dir(dir_path)
    items = []

    TYPES.each do |type|
      Dir.glob("#{dir_path}#{type[:dir]}/*txt").each do |file_name|
       items << type[:class].from_file(file_name)
      end
    end
    new(items)
  end

  def initialize(items)
    @items = items
  end

  # return array of items
  def to_a
    @items
  end

  # sort by attribute and
  # attribute = price or product_name or items_left
  # sort_type = up or down
  def sort(attribute, sort_type)
    @items.sort_by! {|item| item.price} if attribute == "price"
    @items.sort_by! {|item| item.product_name} if attribute == "product_name"
    @items.sort_by! {|item| item.items_left} if attribute == "items_left"
    @items.reverse! if sort_type == "down"
  end
end
