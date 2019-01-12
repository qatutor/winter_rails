require "rexml/document"

class QuizData
  attr_accessor :questions_text, :questions_variants, :questions_time, :right_answer

  def initialize(doc_xml)
    index = 0
    @questions_text = Hash.new
    @questions_time = Hash.new
    @questions_variants = Hash.new
    doc_xml.elements.each("questions/question") do |question_tag|
      index +=1
      #get all questions time
      @questions_time.store(index, question_tag.attributes["minutes"].to_i)

        # get all questions text
        question_tag.elements.each("text") do |text_tag|
          @questions_text.store(index, text_tag.text)
        end

        question_variants = Hash.new
        index_variants = 0
        question_tag.elements.each("variants/variant") do |variant_tag|
          index_variants +=1
          question_variants.store(index_variants, variant_tag.text)
        end
          @questions_variants.store(index, question_variants)
    end
    puts @questions_text
    puts @questions_time
    puts @questions_variants
  end
end