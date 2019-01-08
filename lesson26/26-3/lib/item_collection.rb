require_relative 'item'

class ItemCollection
  def initialize(file_names)
    @items = []
    file_names.each do |file_name|
      lines = File.readlines(file_name, chomp: true)
      @items << Item.new(lines[0], lines[1], lines[2].to_i, lines[3].to_i)
    end
  end

  def get_suitable_items(temp)
    suitable_items = []
    @items.each do |item|
     suitable_items << item if (temp >= item.temp_min && temp <= item.temp_max)
    end
    suitable_items
  end
end