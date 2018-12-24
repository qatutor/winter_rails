require_relative "face"

current_path = File.dirname(__FILE__)
time = Time.now
current_date = time.strftime("%m.%d.%Y")
current_time = time.strftime("%H:%M:%S")
file = File.new(current_path + '/drive/face' + current_date + current_time + '.txt', "a:UTF-8")

face = Face.new('foreheads.txt', 'eyes.txt', 'noses.txt', 'mouths.txt')
faces = face.draw_face
for face in faces do
  file.puts(face)
end
file.close
