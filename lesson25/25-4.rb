def happy_birthday(person)
  puts "Дорогой #{person[:first_name]} #{person[:middle_name]}"
  puts "Вам сегодня исполняется #{person[:age]}"
  puts "#{person[:wish_message]}"
end

happy_birthday(first_name: "Юлий", middle_name: "Цезарь", age: 1253, wish_message: "Прекрасно выглядите!")
