
choice = nil
while choice != "1" || choice != "2" || choice != "3" do
  puts "Привет, как себя чувствует, может проголодался?"
  puts "1. Недавно поел."
  puts "2. Да, есть немного..."
  puts "3. Очень голодный! "
  choice = gets.chomp
end
