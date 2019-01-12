class Product
  attr_accessor :price, :items_left, :product_name

  def initialize(param)
    @product_name = param[:product_name]
    @price = param[:price].to_i
    @items_left = param[:items_left].to_i
  end

  def from_file(file_path)
    raise NotImplementedError
  end

  def update(param)
    @product_name = param[:name]
    @price = param[:price]
    @items_left = param[:items_left]
  end

  def in_stock?
    items_left > 0
  end

  def decrease_number_of_items
    @items_left -= 1
  end

  def to_s(additional_attributes)
    "#{@product_name} #{additional_attributes} #{@price} (осталось #{@items_left})"
  end
end
