# А теперь стремительно напишите для вашего «Сундука желаний» скрипт, который выводит

# 1. желания, которые уже должны были сбыться на текущий день;
# 2. желание, которым ещё предстоит сбыться.


# Эти желания должны уже были сбыться к сегодняшнему дню
# 13.08.1912: Найти священный Грааль
# 20.07.1944: Захватить мир
# 13.08.2015: Протестировать работу программы "Сундук желаний"
#
# А этим желаниям ещё предстоит сбыться
# 08.03.2018: Сделать курс по Node.JS



require 'rexml/document'
require 'date'

path = "#{__dir__}/wish.xml"
begin
file = File.new(path, "r:UTF-8")
rescue Errno::ENOENT => e
  puts "Not correct path to the file"
  abort e.message
end

begin
doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "Bad file"
  abort e.message
end



