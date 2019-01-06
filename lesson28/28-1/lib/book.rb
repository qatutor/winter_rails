require_relative 'product'

class Book < Product
  def initialize(param, book_name, book_type, author)
    super(param)
    @book_name = book_name
    @book_type = book_type
    @author = author
  end

  def to_s
    "#{@name} #{@price} #{@items_left}  #{@book_name} #{@book_type} #{@author}"
  end
end