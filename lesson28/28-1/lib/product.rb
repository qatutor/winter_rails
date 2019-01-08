class Product
  attr_accessor :price, :items_left, :name

  def initialize(param)
    @name = param[:name]
    @price = param[:price].to_i
    @items_left = param[:items_left].to_i
  end

  def from_file(file_path)
    raise NotImplementedError
  end

  def update(info)
    @name = info[:name]
    @price = info[:price]
  end
end