require_relative 'train'

file_names = Dir.glob("#{__dir__}/data/*.txt")

tickets = []
file_names.each do |file_name|
  tickets << Train.new(File.readlines(file_name, chomp:true))
end

puts "Введите пункт отправления"
depature_station = gets.chomp

puts "Введит пункт назначения"
destination_station = gets.chomp

puts "Введите максимальное время в пути"
max_travel_time = gets.chomp


def time?(string)
 string =~ /[0-2]\d:[0-5]\d/
end

puts time?("12:12")



