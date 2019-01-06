class Product
  attr_reader :price, :items_left, :name

  def initialize(params)
    @price = params[:price]
    @items_left = params[:items_left]
    @name = params[:name]
  end

  def info
    "#{name} стоит #{price}"
  end

#  def self.print_from_class
#    puts "hello from class"
#  end

  class << self
    def print_first_time
      puts "one"
    end

    def print_second_time
      puts "two"
    end
  end
end