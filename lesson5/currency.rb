puts "Курс доллара: "
index = gets.to_f

puts "Сколько у вас рублей?"
rub = gets.to_f

puts "Сколько у вас долларов?"
dol = gets.to_f

convert_rub_to_dol = (rub / index)
difference = (convert_rub_to_dol - dol)
puts "dif #{difference}"

if difference == 0
  puts "Ваш портфель сбалансирован"
elsif difference > 0
  puts "Вам надо продать #{(difference/2).round(2)} $"
else
  puts "Вам надо докупить #{(difference.abs/2).round(2)} $"
end
