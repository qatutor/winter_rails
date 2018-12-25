puts "Курс доллара: "
index = gets.to_f

puts "Сколько у вас рублей?"
rub_in_case = gets.to_f

puts "Сколько у вас долларов?"
dol_in_case = gets.to_f

dol = rub_in_case / index

dif_in_dol = dol_in_case - dol

if dif_in_dol.abs < 0.01
  puts "Ваш портфель сбалансирован"
elsif dif_in_dol < 0
  puts "Вам надо докупить #{(dif_in_dol/2).round(2).abs} $"
else
  puts "Вам надо продать #{(dif_in_dol/2).round(2)} $"
end
