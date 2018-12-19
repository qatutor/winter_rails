puts "Введите первое число: "
num1 = gets.to_i

puts "Введите второе число: "
num2 = gets.to_i

puts "Выберите оператор из предложенных в скобках  (* + - /): "
operator = gets.chomp

result = nil

case operator
when '*' then num1 * num2
when '/'
begin
  result = num1 / num2
rescue ZeroDivisionError => error
puts "Деление на ноль. " + error.message
end
when '-' then num1 - num2
when '+' then num1 + num2
else
  puts "Запустите программу заново и выберите \nодин из операторов: + - * /"
  exit
end

puts "Результат: #{result}" if !result.nil?