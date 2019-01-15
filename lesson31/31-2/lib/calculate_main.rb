require_relative 'application'

# puts "возраст: "
# age = gets.to_i
#
# puts "пол: "
# person = gets.chomp
#
# puts "доход: "
# income = gets.to_i
#
# puts "кредитная история (есть/нет)"
# credit_history = gets.chomp
#
# puts "запрашиваемая сумма: "
# credit = gets.to_i
#
# application = Application.new(age, person, income, credit_history, credit)
# application.final_score
#
# if application.approved?
#   puts "Кредит подтвержден."
# else
#   puts "В кредите отказано."
# end

app = Application.new(24, "женщина", 40000, 'есть', 40000)



puts app.calculate_score

puts app.approved?

