require_relative 'product'

class Book < Product
  attr_accessor :book_name, :book_type, :author

  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp: true)
    Book.new({product_name: 'book', price: file_info[3].to_i, items_left: file_info[4].to_i, book_name: file_info[0],
              book_type: file_info[1], author: file_info[2]})
  end

  def initialize(param)
    super(param)
    @book_name = param[:book_name]
    @book_type = param[:book_type]
    @author = param[:author]
  end

  def update(param)
    @book_name = param[:book_name]
    @book_type = param[:book_type]
    @author = param[:author]
  end

  def to_s
    super("#{@book_name} #{@book_type} #{@author}")
  end
end
