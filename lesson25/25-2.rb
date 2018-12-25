def fill_out_personal_data(first_name, last_name, middle_name, passport, ticket_num, distance)
  {
    first_name: first_name,
    last_name: last_name,
    middle_name: middle_name,
    passport: passport,
    ticket_num: ticket_num,
    distance: distance
  }
end

def print_ticket(passenger)
  puts "Билет #{passenger[:ticket_num]}"
  puts "Маршрут #{passenger[:distance]}"
  puts "Пассажир #{passenger[:first_name]} #{passenger[:middle_name]} #{passenger[:last_name]}"
  puts "Паспорт #{passenger[:passport]}"
end

passengers = []

passengers << fill_out_personal_data('Венедикт', 'Ерофеев', 'B', '145 99 50528', 'РМ2010398 050298', 'Москва — Петушки')
passengers << fill_out_personal_data('Иннокентий', 'Шниперсон', 'П.', '46 01 192872', 'РМ2010398 050299', 'Павловский Посад -> Орехово-Зуево')
passengers << fill_out_personal_data('Иван', 'Бунша', 'B', '47 33 912876', 'РМ2010398 050300', 'Москва -> Владимир')

passengers.each_with_index do |passenger, index|
  puts "*** Mecто № #{index + 1} ***"
  print_ticket(passenger)
end