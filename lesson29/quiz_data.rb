require "rexml/document"

class QuizData
  attr_accessor :questions, :variants, :questions_time, :correct_answers

  def initialize(doc_xml)
    question_num = 0
    @questions = Hash.new
    @questions_time = Hash.new
    @variants = Hash.new
    @correct_answers = Hash.new

    doc_xml.elements.each("questions/question") do |question_tag|
      question_num +=1 # question number starts from 1.

      # store all questions time
      @questions_time.store(question_num, question_tag.attributes["minutes"].to_i) # { question_num => time}

        # store all questions text
        question_tag.elements.each("text") do |text_tag|
          @questions.store(question_num, text_tag.text) # { question_num => question}
        end

        question_variants = Hash.new
        variant_num = 0

        question_tag.elements.each("variants/variant") do |variant_tag|
          variant_num +=1 # variants start from 1 when displayed on the screen for each question.
          question_variants.store(variant_num, variant_tag.text) # {variant_num => variant}

          #store correct answers
          @correct_answers.store(question_num, {variant_num => variant_tag.text}) if variant_tag.attributes["right"] ==
              "true"
        end

        # store all variants for a question
        @variants.store(question_num, question_variants) # {question_num => {variant_num => variant}}
    end
  end

  def is_answer_correct?(question_num, variant_num)
    correct_answers[question_num].keys.first == variant_num
  end

end