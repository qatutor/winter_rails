# encoding: utf-8
#
# Класс Склонятор, с метод для выбора нужной формы русских слов в соответствии с
# количеством. Взято из 9 урока.
#
# (c) goodprogrammer.ru
class Sklonjator
  # Статический метод sklonenie возвращает правильную форму слова, когда нужно
  # его использовать с числом. Например во фразах, типа «1 крокодил»,
  # «7 крокодилов».
  def self.sklonenie(number, krokodil, krokodila, krokodilov, with_number = false)
    number = 0 if number.nil? || !number.is_a?(Numeric)

    # Чтобы исправить баг и заработали тесты, надо раскомментировать
    # этот код.
    #
    # return krokodilov if (number % 100).between?(11, 14)

    prefix = ""
    prefix = "#{number}" if with_number

    ostatok = number % 10

    ostatok100 = number % 100

    if (ostatok100 >= 11 && ostatok100 <= 14)
      return "#{prefix}#{krokodilov}"
    end

    return "#{prefix}#{krokodil}" if ostatok == 1

    return "#{prefix}#{krokodila}" if ostatok.between?(2, 4)

    return "#{prefix}#{krokodilov}" if ostatok.between?(5, 9) || ostatok.zero?
  end
end
