class Item
  attr_reader :item_name, :item_type, :temp_max, :temp_min

  def initialize(name, type, max, min)
    @item_name = name
    @item_type = type
    @temp_max = max
    @temp_min = min
  end

  def to_s
    "#{@item_name} #{@item_type} #{@temp_min}..#{@temp_max}"
  end
end