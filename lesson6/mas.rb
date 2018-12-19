=begin
man_names = ["Peter", "Michael", "Jhoe"]
woman_names = ["Jessica", "Samantha", "Chloe"]

common = []

common.push(man_names[0])
common << man_names[1]
common.push(man_names[2])
common.push(woman_names[0])
common.push(woman_names[1])
common.push(woman_names[2])


puts "Man"
puts man_names.to_s

puts "Woman"
puts woman_names.to_s

puts "Common"
puts common.to_s
=end

=begin
arr = [1, 2, 3, 4, 5]

arr2 = []
arr2.push(arr[4])
arr2.push(arr[3])
arr2.push(arr[2])
arr2.push(arr[1])
arr2.push(arr[0])

puts "Given"
puts arr.to_s

puts "Converted"
puts arr2.to_s

puts "Given array and no change"
puts arr.to_s

#arr_new = arr.reverse

puts "Changed array"
puts arr.reverse!.to_s
=end

mas = ["car1", "car2", "car3", "car4",
      "car5", "car6", "car7", "car8",
      "car9", "car10"]

puts "We have only " + mas.size.to_s + " cars"
puts "Which you would like? "
num = gets.to_i

#check input
if num <= 0 || num > mas.size
  abort "Sorry, we don't have such car."
end

num -=1 # need decrease for array index
puts "Congratulations you got."
puts mas[num].to_s
