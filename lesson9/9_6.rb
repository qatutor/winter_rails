def get_win_result(user_choice, comp_choice)
  combine_user_comp_choices = [user_choice, comp_choice]
  #check only when user win
  if combine_user_comp_choices == [0, 1] ||
     combine_user_comp_choices == [1, 2] ||
     combine_user_comp_choices == [2, 0] ||
     combine_user_comp_choices == [3, 2] ||
     combine_user_comp_choices == [3, 1]
     return 1
  #check when draw
  elsif combine_user_comp_choices == [0, 0] ||
        combine_user_comp_choices == [1, 1] ||
        combine_user_comp_choices == [2, 2] ||
        combine_user_comp_choices == [3, 3]
        return 3
  else
        return 2
  end
end

puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага, 3 - oгонь"

user_choice = gets.to_i
puts "Вы выбрали: " + user_choice.to_s

comp_choice = rand(0..3)
puts "Компьютер выбрал: " + comp_choice.to_s

output_result = get_win_result(user_choice, comp_choice)

if output_result == 1
  puts "Вы победили"
elsif output_result == 2
  puts "Победил Компьютер"
else
  puts  "Ничья"
end
