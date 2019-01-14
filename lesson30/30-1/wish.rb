# Программа спрашивает у пользователя в консоли, чего он хочет и
# до какой даты он хочет, чтобы его желание исполнилось, а потом
# записывает это всё в XML-файл.


# Пример
#
# В этом сундуке хранятся ваши желания.
#     Чего бы вы хотели?
#
# > Сделать курс по Node.JS
#
# До какого числа вы хотите осуществить это желание?
# (укажите дату в формате ДД.ММ.ГГГГ)
#
# > 8.3.2018
#
# Ваше желание в сундуке

require 'rexml/document'
require 'date'

puts "What is your wish?"
wish = STDIN.gets.chomp

puts "What is wish date?"
date = STDIN.gets.chomp

#should handle exception if not write input
wish_date = Date.parse(date)


file_path = "#{__dir__}/wish.xml"
file = File.new(file_path, "r:UTF-8")
# !should catch exception if file is not good
begin
doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "File is not good"
  abort e.message
end
file.close

element = doc.root.add_element 'wish', {'date' => wish_date}
element.text = wish

#open to write

file = File.new(file_path, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Saved."
