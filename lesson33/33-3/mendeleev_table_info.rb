require 'json'

file = File.read('mendeleev_table.json')
table_elements = JSON.parse(file)

puts "O каком элементе хотите узнать?"
puts table_elements.keys.join(',')
puts ":"

element = STDIN.gets.chomp.downcase
table_elements.transform_keys!(&:downcase)
if table_elements[element]
  puts "Порядковый номер: #{table_elements[element]["number"]}"
  puts "Название: #{table_elements[element]["name"]}"
  puts "Первооткрыватель: #{table_elements[element]["discoverer"]} (#{table_elements["year"]} г.)"
  puts "Плотность: #{table_elements[element]["density"]} г/cм3"
else
  puts "О таком элементе нет информации"
end
