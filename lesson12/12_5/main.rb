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

application = CustomerApplication.new(age, person,
              income, credit_history, credit)

  def print_result(approved)
    if approved
      puts "Кредит подтвержден."
    else
      puts "В кредите отказано."
    end
  end

application.calculate_score
print_result(application.approved?)
