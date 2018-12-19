
=begin
patterns = ['torf', 'motor']

pattern = patterns.sample
puts "random pattern is: #{pattern}"

letter = pattern.split('').sample
puts "random letter is: #{letter}"


res = pattern.gsub(letter, '.')
puts "replase letter in word. result is : #{res}"
=end

=begin
if "gab" =~ /sdf/
end
