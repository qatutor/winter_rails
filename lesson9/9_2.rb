
list_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def output_elements(num, array)
  return array.take(num)
end

puts "Вот какая палка колбасы у нас есть:"
puts list_numbers.to_s

puts "Сколько первых элементов вам отрезать?"
user_input = gets.to_i

puts "Вот ваша колбаса: "
puts "#{output_elements(user_input, list_numbers)}"
