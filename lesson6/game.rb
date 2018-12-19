puts "Введите вариант: 0 - камень, 1 - ножницы, 2 -бумага"
user_choice = gets.to_i
puts "Вы выбрали: " + user_choice.to_s

comp_choice = rand(0..2)
puts "Компьютер выбрал: " + comp_choice.to_s
combine_user_comp_choices = [user_choice, comp_choice]

#check only when user win
if combine_user_comp_choices == [0, 1] ||
   combine_user_comp_choices == [1, 2] ||
   combine_user_comp_choices == [2, 0]
   abort "Вы победили"
#check when draw
elsif combine_user_comp_choices == [0, 0] ||
      combine_user_comp_choices == [1, 1] ||
      combine_user_comp_choices == [2, 2]
      puts "Ничья"
else
      abort "Победил Компьютер"
end
