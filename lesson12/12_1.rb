def reply_question(person)
  case person
  when "Бэтмен","бэтмен", "Batman", "batman"
    puts "Джокер"
  when "шерлок Холмс"
    puts "Профессор Мориарти"
  when "буратино"
    puts "Карабас-Барабас"
  when "фродо Бэггинс"
    puts "Саурон"
  when "моцарт"
    puts "Сальери"
  else
    puts "Не удалось найти врага."
  end
end

puts "Врага какого персонажа вы хотите узнать?"
user_input = gets.chomp
reply_question(user_input)
