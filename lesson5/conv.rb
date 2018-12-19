puts "what is your currency? "
puts "1. rub"
puts "2. dol"

var1 = gets.chomp.to_i

def convert
  price = gets.chomp.to_f

  puts "how much you have? "
  num = gets.chomp.to_f

  res = num * price
  puts "result: " + res.to_s
end

  if var1 == 1
    #start convert to dol
    puts "what is cost for 1 dol now? "
    convert

  else
    #start convert to rub
    puts "what is cost for 1 rub now? "
    convert

  end

=begin
puts "what is cost for 1 dol now? "
price = gets.chomp.to_i

puts "how much you have? "
num = gets.chomp.to_i

res = num / price

puts "result is: " + res.to_s
=end
