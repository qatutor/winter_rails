rand_symbols = []
token = []
# generating array all symbols
rand_symbols = [*('a'..'z'), *('0'..'9'), *('A'..'Z')]
#generating until token size != 8
counter = 1
while counter <= 8
token << rand_symbols.sample
counter += 1
end

#print token
puts "Your token is: #{token.join}"
puts
