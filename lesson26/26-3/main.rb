require_relative 'items'
require_relative 'forecast'

puts "Программа запущена...."
items = Items.new
#items.show_all_items
items.ask_to_add_item

puts "Сколько градусов за окном? (можно с минусом)"
temp = gets.to_i


#system_decision = Forecast.new(temp, items)
#system_decision.print_result