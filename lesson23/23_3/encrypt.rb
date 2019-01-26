require 'digest'

puts "Введите слово или фразу для шифрования: "
text = gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

encrypt_type = gets.to_i

def encrypt(type, text)
  case type
  when 1
    Digest::MD5.hexdigest(text)
  when 2
    Digest::SHA1.hexdigest(text)
  when 3
    Digest::SHA2.hexdigest(text)
  end
end

puts "Результат: #{encrypt(encrypt_type, text)}"