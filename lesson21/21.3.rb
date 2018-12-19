
1.upto(100) do |number|
  if number % 3 == 0 && number % 5 == 0
    puts "тыры-пыры"
  elsif number % 5 == 0
    puts "пыры"
  elsif number % 3 == 0
    puts "тыры"
  else
  puts number
  end
end

#some comments