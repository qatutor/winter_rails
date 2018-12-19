require './face.rb'
=begin
current_path = File.dirname(__FILE__)

def get_path(file_name, current_path)
  path_dir = '/data/'
  file_path = current_path + path_dir + file_name
end

def get_file(file_path)
  if File.exist?(file_path)
    file = File.new(file_path, 'r:UTF-8')
    file_text = file.readlines
    file.close
    file_text
  else
    puts "Please enter the correct file name"
    exit
  end
end


puts get_file(get_path('foreheads.txt', current_path)).sample
puts get_file(get_path('eyes.txt', current_path)).sample
puts get_file(get_path('noses.txt', current_path)).sample
puts get_file(get_path('mouths.txt', current_path)).sample
=end

face = Face.new('foreheads.txt', 'eyes.txt', 'noses.txt', 'mouths.txt')
face.draw_face
