require 'rexml/document'
require 'timeout'
require_relative 'quiz_data'

file_name = "#{__dir__}/questions_with_answers.xml"

abort puts "File does not exist." unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
quiz_data = QuizData.new_parse_from_rexml(doc)

def greeting
  puts "Приветствую, Вы принимаете участие в Викторине!"
  puts "На каждый вопрос дается ограниченное количество времени, будьте внимательны."
  puts "На экране появится вопрос и варинаты ответов. Введите с клавиатуры номер варианта."
  puts "После завершения ответов на вопросы, Вы увидете свой результат."
  puts "Готовы? 1 - Да, 2 - Нет"
end

greeting
exit if gets.to_i != 1 # run program only enters 1 otherwise doesn't make sense to execute

def question_timer(minutes)
  choice = :blank_answer
  Timeout::timeout(minutes * 60) do
    puts "Времени на ответ в минутах: #{minutes}"
    puts "Выберите номер: "
    choice = STDIN.gets.to_i
  end
  rescue Timeout::Error
  choice
end

quiz_data.questions.each do |question_num, text|
  #print question
  puts "#{question_num} - #{text}"
  puts "Варианты ответов:"

  #print variants
  quiz_data.variants[question_num].each do |variant_num, text|
    puts "#{variant_num} - #{text}"
  end

  user_choice = question_timer(quiz_data.questions_time[question_num])

  if user_choice != :blank_answer
    if quiz_data.is_answer_correct?(question_num, user_choice)
      quiz_data.score += 1
      puts "Это правильный ответ."
    else
      puts "Правильный ответ: #{quiz_data.correct_answer(question_num)}"
    end
  else
    puts "Время вышло"
    puts "Правильный ответ: #{quiz_data.correct_answer(question_num)}"
  end
end

puts "У вас правильных ответов #{quiz_data.score} из #{quiz_data.questions.size}"
