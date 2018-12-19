=begin
count = 1

while count > 0 do
  puts count
  puts count.class
  count +=1
  sleep 0.5
end
=end

=begin
arr_num = [0, 1, 23, 0, 34, 0, 2, 0, 0, 0, 4, 0, 44, 0]

arr_0 = []
count_of_0 = 0

for item in arr_num do
  if item == 0
    count_of_0 += 1
    arr_0 << item
  end
end

puts arr_num.to_s
puts arr_0.to_s
puts count_of_0
=end

=begin
puts "Enter num: "
num = gets.to_i
array = []
sum = 0
count = 1
while count <= num do
   array << count
   sum += count
   count += 1

end

puts array.to_s
puts "Sum is #{sum}"
=end

=begin
arr = []

puts "Какой длины будет массив случайных чисел? "
size = gets.to_i
count = 1
while count <= size do
  arr << rand(0..100)
  count +=1
end
puts arr.to_s

max = arr[0]
for element in arr do
  if element > max
    max = element
  end
end

puts "Max element is: " + max.to_s
=end
=begin
choice = nil
loop do
  puts "Привет, как себя чувствует, может проголодался?"
  puts "1. Недавно поел."
  puts "2. Да, есть немного..."
  puts "3. Очень голодный! "
  choice = gets.chomp
  if choice == "1" || choice == "2" || choice == "3"
    break
  end
end

  if choice == "1"
    loop do
      puts "Звонит друг, возьмешь телефон? "
      puts "1. Да."
      puts "2. Нет."
        choice = gets.chomp
        if choice == "1" || choice == "2"
          break
        end
    end

        if choice == "1"
          abort "Друг пригласил сегодня вечером на День Рождение."
        else
          abort "Друг не смог до тебя дозвониться. Сегодня вечером, пропустишь классную тусовку."
        end
  elsif choice == "2"
    puts "Хочешь что-нибудь вкусненькое приготовить или заказать доставку? "
    puts "1. Думаю приготовить, давно хотелось, что-нибудь вкусного, домашенго."
    puts "2. Особо времени нет готовить, закажу онлайн"
      choice = gets.chomp
        if choice == "1"
          puts "После 30 минут возле плиты, решил попробовать."
          abort "Эх получилось не как в ресторане но в принципе вкусно"
        else
          #Вставить условие времени суток
          puts "Подожди, сейчас сколько времени, больше 22.00 ?"
          puts "1. Да"
          puts "2. Нет"
              choice = gets.chomp
                if choice == "1"
                  abort "В такое время доставка уже не работает. Можно самому сделать пикап, но оно того стоит?"
                end
          puts "Что будешь заказывать?"
          puts "1. Суши"
          puts "2. Пицца"
          puts "3. Китайская еда"
          choice = gets.chomp
            if choice == "1"
              abort "Для меня была это маленькия порция, в следующй раз закажу побольше."
            elsif choice == "2"
              abort "Пиццу привезли холодную, но что делать, есть хочется, заберу."
            else
              abort "Ждал доставку на 20 минут больше, чем обещали по телефону, но еда понравилась."
            end
         end
  elsif choice == "3"
    puts "Что делать будешь? "
    puts "1. Попробовать самому приготовить, некогда ждать."
    puts "2. Попрошу сестру, она лучше меня готовит."
      choice = gets.chomp

      if choice == "1"
        puts "После 30 минут возле плиты, решил попробовать."
        abort "Эх получилось не как в ресторане но в принципе вкусно"
      else
        puts "Сестра сказала, что не хочет сегодня готовить."
        puts "Все еще хочешь готовить сам или закажешь онлайн?"
        puts "1. Заказать онлайн"
        puts "2. Готовить самому"
          choice = gets.chomp
            if choice == "2"
              puts "После 30 минут возле плиты, решил попробовать."
              abort "Эх получилось не как в ресторане но в принципе вкусно"
            else
              #Вставить условие времени суток
              puts "Подожди, сейчас сколько времени, больше 22.00 ?"
              puts "1. Да"
              puts "2. Нет"
                  choice = gets.chomp
                    if choice == "1"
                      abort "В такое время доставка уже не работает. Можно самому сделать пикап, но оно того стоит?"
                    end
              puts "Что будешь заказывать?"
              puts "1. Суши"
              puts "2. Пицца"
              puts "3. Китайская еда"
              choice = gets.chomp
                if choice == "1"
                  abort "Для меня была это маленькия порция, в следующй раз закажу побольше."
                elsif choice == "2"
                  abort "Пиццу привезли холодную, но что делать, есть хочется, заберу."
                else
                  abort "Ждал доставку на 20 минут больше, чем обещали по телефону, но еда понравилась."
                end
            end
        end
  end
=end

puts "Enter num: "
num = gets.to_i
array = []
count = 1
while count <= num do
   array << count
   count += 1
end

arr_new = []
for each in array do
  arr_new.unshift(each)
end

puts arr_new.to_s
