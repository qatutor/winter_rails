require 'rexml/document'
require_relative 'quiz_data'

file_name = "#{__dir__}/questions_with_answers.xml"

abort puts "File does not exist." unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
quiz_data = QuizData.new(doc)

puts "Приветствую, Вы принимаете участие в Викторине!"
puts "На каждый вопрос дается ограниченное количество времени, будьте внимательны."
puts "На экране появится вопрос и варинаты ответов. Введите с клавиатуры номер варианта."
puts "После завершения ответов на вопросы, Вы увидете свой результат."
puts "Готовы? 1 - Да, 2 - Нет"

exit if !gets.to_i == 1 # run program only enters 1 otherwise doesn't make sense to execute

quiz_data.questions.each do |question_num, text|
  puts "#{question_num} - #{text}"
    puts "Варианты ответов:"
    quiz_data.variants[question_num].each do |variant_num, text|
      puts "#{variant_num} - #{text}"
    end
  puts "Выберите номер варианта:"
  choice = gets.to_i
end


