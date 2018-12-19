name = ARGV[0]

if name == nil
  name = "anonimus"
end

puts "Hello, #{name}! Please answer questions"



questions = [
  "question1",
  "question2",
  "question3",
  "question4",
  "question5",
  "question6",
  "question7",
  "question8",
  "question9",
  "question10"
]

results = [
  "result 1: " + "You got 10 scores",
  "result 2: " + "You got 5 - 9 scores",
  "result 3: " + "You got less 5 scores",
]

count_yes = 0

for item in questions do
  puts item

  user_input = nil

  while (user_input != "yes" && user_input != "no")
    puts "Enter yes or no"
    user_input = STDIN.gets.chomp.downcase #Yes NO
  end

  if user_input == "yes"
    count_yes += 1
  end
end

puts "\n#{name}"
puts "\nYour result is: answers yes - #{count_yes}"

if count_yes == 10
  puts results[0]
elsif count_yes <= 5
  puts results[2]
else
  puts results[1]
end
