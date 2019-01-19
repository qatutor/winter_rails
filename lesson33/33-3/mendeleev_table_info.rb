require 'json'

file = File.read('mendeleev_table.json')
table_elements = JSON.parse(file)

elements_list = []
table_elements.each_key do |element|
  elements_list << "#{element}"
end

def ask_user_info(elements_list)
  puts "O каком элементе хотите узнать?"
  elements_list.each do |element|
    print "#{element} "
  end
  puts ":"
  STDIN.gets.chomp.downcase
end

user_input = ask_user_info(elements_list)
until !user_input.empty?
  puts "Вы не ввели химический элемент из списка."
  puts "Для выхода нажмите 0"

  user_input = ask_user_info(elements_list)
  exit if user_input == "0"
end

active_element = nil
elements_list.each do |element_name|
  active_element = element_name if user_input == element_name.downcase
end

unless active_element.nil?
  puts "Порядковый номер: #{table_elements[active_element]["number"]}"
  puts "Название: #{table_elements[active_element]["name"]}"
  puts "Первооткрыватель: #{table_elements[active_element]["discoverer"]} (#{table_elements[active_element]["year"]} г.)"
  puts "Плотность: #{table_elements[active_element]["density"]} г/cм3"
else
  puts "Информация доступна только об элементах предложенных из списка на экране. "
end
