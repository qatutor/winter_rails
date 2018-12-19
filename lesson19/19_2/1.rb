puts "Введите первое число: "
num1 = gets.to_f

puts "Введите второе число: "
num2 = gets.to_f

puts "Выберите оператор из предложенных в скобках  (* + - /): "
operator = gets.chomp

result = nil

  case operator
    when '*'
      result = num1 * num2
    when '/'
      result = num1 / num2
    when '-'
      result = num1 - num2
    when '+'
      result = num1 + num2
    else
      puts "Запустите программу заново и выберите \nодин из операторов: + - * /"
      exit
    end

if !result.nil?
puts "Результат: #{result}"
end
