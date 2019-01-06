require_relative 'lib/item'
dir_path = __dir__ + '/data/'

file_names = Dir.glob("#{dir_path}*.txt")

items = []
file_names.each do |file_name|

  lines = File.readlines(file_name, chomp: true)
  items << Item.new(lines[0], lines[1], lines[2].to_i, lines[3].to_i)
end

#puts "#{items}"
puts "Сколько градусов за окном? (можно с минусом)"
temp = gets.to_i

available_items = []
items.each do |item|
  available_items << item if (temp >= item.temp_min && temp <= item.temp_max)
end

puts "Предлагаем сегодня надеть: \n"
available_items.each do |item|
  puts item
end
