food_list = ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]

puts "Нужно купить"
puts food_list.to_s

while food_list.size > 0 do
  puts "Что купили:"
  item = gets.chomp
  food_list.delete(item)
  puts "Нужно еще купить:"
  puts food_list.to_s
end

puts "Поздравляю! Вы закончили шопинг."
