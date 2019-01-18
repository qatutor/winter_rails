require 'json'

file = File.read('buiseness_card.json', encoding:'utf-8')
buiseness_card_info = JSON.parse(file)

buiseness_card_info.each_key do |key|
  puts buiseness_card_info[key]
end

puts
puts "#{buiseness_card_info["first_name"]} #{buiseness_card_info["last_name"]}"
puts "#{buiseness_card_info["email"]}"
puts "#{buiseness_card_info["occupation"]}"