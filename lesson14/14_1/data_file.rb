class DataFile

def initialize(file_path)
  file = File.new(file_path, 'r:UTF-8')
  @file_text = file.readlines
  file.close
end

  def get_file_text
    @file_text
  end

end
