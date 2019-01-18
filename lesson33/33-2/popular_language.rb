require 'json'

file = File.read('programmers.json')

data = JSON.parse(file)


# 2. winner print one line
# 3. print all other
# 1. invert hash so value digit first and name second
# 2. sort it will do based on key
# 3. reverse to get greater the first
prog_languages_list = data.invert.sort.reverse

# prog_languages_list.each_with_index do |element, index|
#   if index == 0
#   puts "Самый популярный язык в мире: #{element[1]} #{element[0]}"
#   else
#     puts "#{index+1}: #{element[1]} #{element[0]}"
#   end
# end
#
puts "Самый популярный язык в мире: #{prog_languages_list[0][1]} #{prog_languages_list[0][0]}"
puts
prog_languages_list.each_with_index do |element, index|
  puts "#{index+1}: #{element[1]} #{element[0]}"
end