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

  def to_s
    "#{@name} #{@price} #{@items_left} "
  end
end