
passenger =  {
    :first_name => '',
    :last_name => '',
    :middle_name => '',
    :passport => '',
    :ticket_num => '',
    :distance => ''
}

passenger[:first_name] = 'Венедикт'
passenger[:last_name] = 'Ерофеев'
passenger[:middle_name] = 'B'
passenger[:passport] = '45 99 505281'
passenger[:ticket_num] = 'РМ2010398 050298'
passenger[:distance] = 'Москва — Петушки'

puts "Билет #{passenger[:ticket_num]}"
puts "Маршрут #{passenger[:distance]}"
puts "Пассажир #{passenger[:first_name]} #{passenger[:middle_name]} #{passenger[:last_name]}"
puts "Паспорт #{passenger[:passport]}"