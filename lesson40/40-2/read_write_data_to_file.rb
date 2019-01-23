puts "Программа создаст визитку на основе ваших данных."




# get data from the console
puts "Введите имя"
first_name = STDIN.gets.chomp

puts "Введите фамилию"
last_name = STDIN.gets.chomp

puts "Введите должность:"
occupation = STDIN.gets.chomp

puts "Введите url фотографии:"
img_url = STDIN.gets.chomp

puts "Введите телефон:"
phone_num = STDIN.gets.chomp

puts "Введите email:"
email = STDIN.gets.chomp


# read a template.html
file = File.read("#{__dir__}/template.html")

# change the title
file.gsub!('%title%', "#{first_name} #{last_name}")
file.gsub!('%first_name%', "#{first_name}")
file.gsub!('%last_name%', "#{last_name}")
file.gsub!('%occupation%', "#{occupation}")
file.gsub!('%img_url%', "#{img_url}")
file.gsub!('%phone_number%', "#{phone_num}")
file.gsub!('%email%', "#{email}")

new_file_name = Time.new.strftime('%Y-%m-%d_%H-%M.html')
file_new = File.new(new_file_name, 'w')
file_new.write(file)
file_new.close

puts "Ваша визитка сохранена в файл #{new_file_name}"





