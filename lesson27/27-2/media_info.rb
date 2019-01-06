require_relative 'lib/movie'

movie = Movie.new(name: 'Leon', price: 290, amount: 4)
puts movie.info

#puts Movie.ancestors
# singleton method
#
#
# def my_product.print
#   puts self.info
# end

#my_product.print


=begin
class << my_product
  def print_from_object_once
    puts "ooone"
  end

  def print_from_object_twice
    puts "hey hey"
  end
end
=end



