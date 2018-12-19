=begin
names = ['Вася', 'Петя', 'Коля']
last_name_if_for = nil
for name in names
  puts name
  last_name_if_for = name
end

puts "Последнее имя было: " + last_name_if_for

last_name_if_each = nil
names.each do |name|
  puts name
  last_name_if_each = name
end

puts "Последнее имя было: " + last_name_if_each
=end
#abort "hello"
input = gets.chomp

if input == "hello"
  puts "now go to exit"
  exit
  puts "I should not see that"
end

loop do
  puts "loop is working"
end
