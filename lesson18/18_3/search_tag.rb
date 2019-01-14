user_input = gets.chomp
puts "result: "
tags = user_input.scan(/[#][\w\p{L}\d_-]+/i)
for tag in tags
  print "#{tag} "
end
puts ""