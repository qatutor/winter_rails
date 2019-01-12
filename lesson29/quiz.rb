require 'rexml/document'
require_relative 'quiz_data'

file_name = "#{__dir__}/questions_with_answers.xml"

abort puts "File does not exist." unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
quiz_data = QuizData.new(doc)



