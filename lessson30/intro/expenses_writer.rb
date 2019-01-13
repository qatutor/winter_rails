require 'rexml/document'
require 'date'

# puts "What did you buy?"
# expense_text = STDIN.gets.chomp
#
# puts "How much you spend?"
# expense_amount = STDIN.gets.chomp
#
# puts "Please enter date"
# date_input = STDIN.gets.chomp
#
# expense_date = nil
#
# if date_input == ''
#   expense_date = Date.today
# else
#   expense_date = Date.parse(date_input)
# end
#
#
# puts "What is category?"
# expense_category = STDIN.gets.chomp

file_name = "#{__dir__}/my_expenses.xml"

file = File.new(file_name, "r:UTF-8")

begin
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "XML file is not good"
  abort e.message
end
file.close

# find = find collection of all tags
expenses = doc.elements.find('expenses').first

puts "I found #{expenses}"
expense = expenses.add_element 'expense', {
    'amount' => expense_amount,
    'category' => expense_category,
    'date' => expense_date.to_s
}

expense.text = expense_text

file = File.new(file_name, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Completed"