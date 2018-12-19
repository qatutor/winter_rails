time = Time.now
current_path = File.dirname(__FILE__)
#file_name = time.strftime("%m.%d.%y")

puts "Type in your text"
line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end
all_lines.pop


separator = "=========================="
file_name = time.strftime("%H:%M")
file = File.new(current_path + '/diary/' + file_name + '.txt', "a:UTF-8")
  for line in all_lines do
    file.puts(line)
  end

file.puts(separator)
file.close
#file.print("hello world \n\r")
