puts "Введите номер:"
data = gets.chomp

matcher = /^\+?\d([() -]*\d){5,25}$/
res = matcher =~ data

if  res == 0
  puts "Phone number"
else
  puts "Not phone number"
end
