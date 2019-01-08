require_relative 'lib/item_collection'

dir_path = __dir__ + '/data/'
file_names = Dir.glob("#{dir_path}*.txt")

collection = ItemCollection.new(file_names)

puts "Сколько градусов за окном? (можно с минусом)"
temp = gets.to_i
available_items = collection.get_suitable_items(temp)

puts "Предлагаем сегодня надеть: \n"
available_items.each_with_index do |item|
  puts item
end
