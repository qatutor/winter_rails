


def count_sq(radius)
   pi = 3.14
   sq = pi * radius * radius
  return sq
end

puts "Введите радиус круга:"
user_input = gets.to_f
puts "Площадь круга: #{count_sq(user_input)}"

puts "Введите радиус круга:"
user_input = gets.to_f
puts "Площадь второго круга: #{count_sq(user_input)}"
