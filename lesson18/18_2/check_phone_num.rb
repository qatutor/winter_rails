data = gets.chomp

matcher =/^[+\d][ \d][( \d][ \d][ \d][\d][ )\d][ \d-]+$/
res = matcher =~ data


if  res == 0
  puts "Phone number"
else
  puts "Not phone number"
end
