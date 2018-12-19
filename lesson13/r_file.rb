
# '/data/my_text.txt'
if ARGV.empty?
  puts "Please enter file name"
  exit
end

file_name = ARGV[0]
current_path = File.dirname(__FILE__)
file_path = current_path + '/data/' + file_name

if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  file_text = f.readlines
  f.close
  puts "total lines are: #{file_text.size}"
  puts "total blank lines are: #{file_text.count("\n")}"

  reverse_lines = file_text.reverse[0,5]
  for each in reverse_lines
    puts "#{each}"
  end
else
  puts "not correct file name in /data directory"
end
