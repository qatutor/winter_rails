puts "Введите номер:"
data = gets.chomp

matcher = /\A\+?\d([() -]*\d){9,25}\z/
res = matcher =~ data

if  res == 0
  puts "Phone number"
else
  puts "Not phone number"
end



