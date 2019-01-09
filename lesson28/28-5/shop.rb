require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/product_collection'

collection = ProductCollection.new("#{__dir__}")
puts collection.to_a.class

=begin
items_bought = []
choice = nil
total = 0
while choice != 0 do
  puts "Что хотите купить: "
  collection.to_a.each_with_index do |item, index|
    puts "#{index + 1}  #{item}"
  end
  puts "0. Выход"
  choice = gets.to_i
  item = collection.to_a[choice - 1]

  if choice > 0 && item.in_stock?
    item.decrease_number_of_items
    puts "Вы выбрали: #{item}"

    items_bought << item

    total = total + item.price
    puts "Всего товаро на сумму: #{total}"
  elsif choice > 0 && !item.in_stock?
    puts "В данный момент товара нет в наличии на складе"
  else
    choice
  end
end

puts "Вы купили:"
items_bought.each do |item|
  puts item
end
puts "C Вас - #{total} руб. Спасибо за покупку!"
=end


