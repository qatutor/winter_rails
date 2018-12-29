require_relative 'items'

puts "Программа запущена...."
items = Items.new
items.show_all_items
items.ask_to_add_item

puts "Сколько градусов за окном? (можно с минусом)"
temp = gets.to_i
items.system_decision(temp)
