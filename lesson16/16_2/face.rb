class Face

  def initialize(forehead_file, eyes_file, noses_file, mouths_file)
    current_path = File.dirname(__FILE__)
    @foreheads = get_file(get_path(forehead_file, current_path))
    @eyes = get_file(get_path(eyes_file, current_path))
    @noses = get_file(get_path(noses_file, current_path))
    @mouths = get_file(get_path(mouths_file, current_path))
  end

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

  def draw_face
    face = []
    face << @foreheads.sample
    face << @eyes.sample
    face << @noses.sample
    face << @mouths.sample
  end

end
