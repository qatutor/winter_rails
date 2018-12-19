=begin
var1 = 172.169
var2 = 31.514


#puts var1
#puts var2

    if var1 > var2
        puts "Result is " + var1.to_s
    elsif var2 > var1
        puts "Result is " +  var2.to_s
    else
        puts "Numbers are equal"
    end
=end

# (num1 + num2)/2

=begin
num1 = 10
num2 = 20

res = (num1 + num2) / 2 #expected 15

puts "Number 1 is: " + num1.to_s
puts "Number 2 is: " + num2.to_s
puts "Result is: " + res.to_s
=end

=begin
num = 93224

    if num % 2 == 0
        puts "Even number"
    else
        puts "Odd number"
    end
 puts "MY number is: " + num.to_s
=end

# Solution
# Check if rib esle take rand 1 or 0 and output res


time = Time.now.wday

    if time == 0 || time == 6
        puts "Today is weekend"
    else
        puts "Today is working day"
    end


        
        
