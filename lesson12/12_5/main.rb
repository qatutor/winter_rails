require './customer_application.rb'

puts "возраст: "
age = gets.to_i

puts "пол: "
person = gets.chomp

puts "доход: "
income = gets.to_i

puts "кредитная история (есть/нет)"
credit_history = gets.chomp

puts "запрашиваемая сумма: "
credit = gets.to_i

application = Application.new(age, person, income, credit_history, credit)
application.calculate_score

if application.approved?
  puts "Кредит подтвержден."
else
  puts "В кредите отказано."
end
