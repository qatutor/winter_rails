# encoding: utf-8
#
# Популярная детская игра
# https://ru.wikipedia.org/wiki/Виселица_(игра)
#
# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'unicode_utils/upcase'

require current_path + "/game.rb"
require current_path + "/result_printer.rb"
require current_path + "/word_reader.rb"

puts "Игра виселица. Версия 4. (c) goodprogrammer.ru\n\n"
sleep 1

printer = ResultPrinter.new

word_reader = WordReader.new

words_file_name = current_path + "/data/words.txt"

game = Game.new(word_reader.read_from_file(words_file_name))

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
