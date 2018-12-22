require 'digest'

puts "Введите слово или фразу для шифрования: "
text = gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

encrypt_type = gets.to_i

result = encrypt_type == 1 ? Digest::MD5.hexdigest(text) : Digest::SHA1.hexdigest(text)

puts "Результат: #{result}"