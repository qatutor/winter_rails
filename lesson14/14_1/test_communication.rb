require_relative 'data_file'


current_path = File.dirname(__FILE__)
data_dir = current_path + '/data/'

questions_path = data_dir + 'questions.txt'
file_questions = DataFile.new(data_dir + 'questions.txt')
questions = file_questions.get_file_text

  def file_score(folder, file_name)
    file = DataFile.new(folder + file_name)
    file.get_file_text
  end

choices = ["a - да","b - нет","c - иногда"]
puts "Пройдите тест «Ваш уровень общительности»."
score = 0

for question in questions do
  puts question
  puts choices

  user_choice = gets.chomp.downcase
  puts user_choice
  while (user_choice != "a" && user_choice != "b" && user_choice != "c")
    user_choice = gets.chomp.downcase
  end

# count score
  if user_choice == "a"
    score += 2
    puts score.to_s
  elsif user_choice == "c"
    score += 1
  else
    score += 0
  end

end

puts "Ваш результат: #{score}\n"
  if score >= 30
    puts file_score(data_dir, 'score_30-31.txt')
  elsif (score >= 25 && score <= 29)
    puts file_score(data_dir, 'score_25-29.txt')
  elsif (score >= 19 && score <= 24)
    puts file_score(data_dir, 'score_19-24.txt')
  elsif (score  >= 14 && score <= 18)
    puts file_score(data_dir, 'score_14-18.txt')
  elsif (score >= 9  && score <= 13)
    puts file_score(data_dir, 'score_9-13.txt')
  elsif (score >= 4 && score <= 8)
    puts file_score(data_dir, 'score_4-8.txt')
  else
    puts file_score(data_dir, 'score_3.txt')
  end
