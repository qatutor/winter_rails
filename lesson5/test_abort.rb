puts "enter value"
var1 = gets.chomp

if var1 == "1"
  abort "works as expected"
  puts "You won't see me"
else
  puts "abort doesn't work"
end
