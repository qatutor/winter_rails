require 'json'

file = File.read('mendeleev_table.json')
table_elements = JSON.parse(file, :symbolize_names => true)

table_elements.each_with_index do |(element, scientist), index|
  puts "#{index+1} - #{element}: #{scientist}"
end

