require_relative 'product'

class Book < Product
  attr_writer :book_type

  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp:true)
    Book.new({name:'book', price: file_info[4].to_i, items_left: file_info[3].to_i}, file_info[0], file_info[1],
             file_info[2])
  end

  def initialize(param, book_name, book_type, author)
    super(param)
    @book_name = book_name
    @book_type = book_type
    @author = author
  end

  def to_s
    "#{@name} #{@book_name} #{@book_type} #{@author} #{@price} (осталось #{@items_left})"
  end
end
