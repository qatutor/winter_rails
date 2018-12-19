
user_input = gets.chomp.strip.downcase.delete(" \t\r\n,.")

puts "#{user_input}"
  if user_input.eql? user_input.reverse
    puts "That is palindrom"
  else
    puts "no"
  end
