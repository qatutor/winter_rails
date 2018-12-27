require "unicode"

puts "Приветствую, программа запущена..."
puts "Пожалуйста введите слово с клавиатуры и нажмите клавишу Enter."
puts "Результат отобразиться в коносоле."
print ":"

user_input = Unicode::downcase(gets.chomp)

# delete everything except letters
user_input.gsub!(/[^a-zа-яё]/, '')

reverse_user_input = user_input.reverse

if user_input == reverse_user_input
  puts "Является палиндром"
else
  puts "Не является палиндромом"
end
