# encoding: utf-8
#
# Программа, выбрасывающая значение от 1 до 6 — одну игральную кость, версия 2.
# Cпрашиваем у юзера сколько кубиков кинуть.
#
# (с) goodprogrammer.ru

# Спрашиваем у пользователя, сколько кубиков кинуть и записываем его ответ в
# переменную number.
puts "How many dice?"
number = gets.to_i

def show_rolling_dice
  1.upto(100) do
    sleep 0.1
    print "#{rand(6) + 1}\r"
  end
end

# С помощью мтеода целого числа times запускаем цикл, который заданное число раз
# повторяет бросок кубика.
number.times do
  show_rolling_dice
  puts rand(6) + 1
end
