
# fead file
def get_file_info(file_name)
  current_path = File.dirname(__FILE__)
  path = current_path + '/data/' + file_name

  if File.exist?(path)
    file = File.new(path, 'r:UTF-8')
    file_text = file.readlines
    file.close
    file_text
  else
    puts "Please enter the correct file name"
    exit
  end
end

file_questions = get_file_info('questions.txt')
file_answers = get_file_info('answers.txt')

def check_answer_key(answer, index, file_answers)
  if answer == file_answers[index].chomp
    puts "You're right"
    return true
  else
    puts "You're wrong"
    puts file_answers[index]
    return false
  end
end

# ask questions
def ask_question(file_questions, file_answers)
counter_right = 0
index = 0
  for question in file_questions
    puts "#{index + 1}. #{ question}"
    user_input = gets.chomp
      if check_answer_key(user_input, index, file_answers)
        counter_right += 1
      end
    index += 1
  end
counter_right
end

puts "Please answer the following questions: "
number_right = ask_question(file_questions, file_answers)

puts "Your result is: #{number_right} answers out of #{file_questions.size} questions"
