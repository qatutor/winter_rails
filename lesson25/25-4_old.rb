# создаю шаблон для хэша
def person_wish_message(first_name, middle_name, age, wish_message)
  {
    first_name: first_name,
    middle_name: middle_name,
    age: age,
    wish_message: wish_message
  }
end

# передаю хэш параметром в метод
def happy_birthday(person)
  puts "Дорогой #{person[:first_name]} #{person[:middle_name]}"
  puts "Вам сегодня исполняется #{person[:age]}"
  puts "#{person[:wish_message]}"
end

# вызываю метод с параметрами для поздравления
happy_birthday(person_wish_message"Цезарь", "", "23", "Желаем счастья в личной жизни!")