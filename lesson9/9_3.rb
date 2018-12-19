secret_num = rand(0..15)

def check_num(num, secret_num)
  #check input for the right range
  if num < 0 || num > 15
     puts "Будьте внимательны! Введите чилсло от 0 до 15"
  else
    if secret_num == num
      abort "Ура, вы выиграли!" # close program
  #check the difference
    else
      difference = num - secret_num
      if difference.abs <= 2
        puts "тепло"
        if difference < 0
          puts "нужно больше"
        else
          puts "нужно меньше"
        end
      elsif difference.abs >= 3
        puts "холодно"
        if difference < 0
          puts "нужно больше"
        else
          puts "нужно меньше"
        end
      end
    end
  end
end

puts "Загадано число от 0 до 15, отгадайте какое?"

#enter for the first attempt
num = gets.to_i
check_num(num, secret_num)

#enter for the second attempt
num = gets.to_i
check_num(num, secret_num)

#enter for the third attempt
num = gets.to_i
check_num(num, secret_num)

 puts "Вы исчерпали все три попытки. Загаданное число было: " + secret_num.to_s
