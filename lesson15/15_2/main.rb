require 'cyrillizer'


#user_input = gets.chomp

# 1. get russian to english
  #user_input = "Отличный ёж"
  #puts user_input.to_lat

# 2. get english to russian
  #user_input = "Otlichnyy yezh"
  #puts user_input.to_cyr

  user_input = gets.chomp
    if user_input.to_lat.eql? user_input
      puts "that was an english word"
      puts user_input.to_cyr

    else
      puts "that was a russian word"
      puts user_input.to_lat
    end
