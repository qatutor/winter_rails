
def check_email(user_input)
  /^[a-z0-9\.]+@[a-z0-9]+\.[a-z]+/ =~ user_input
end

user_input = gets.chomp

if check_email(user_input) == 0
  puts "Email"
else
  puts "Not email"
end
