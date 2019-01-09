class Product
  attr_accessor :price, :items_left, :name

  def initialize(param)
    @name = param[:name]
    @price = param[:price].to_i
    @items_left = param[:items_left].to_i
  end

  def from_file(file_path); raise NotImplementedError; end

  def update(info)
    @name = info[:name]
    @price = info[:price]
  end

  def in_stock?
    items_left > 0
  end

  def decrease_number_of_items
      @items_left = @items_left - 1
  end

  def to_s
    "#{@name} #{@price} #{@items_left}"
  end
end