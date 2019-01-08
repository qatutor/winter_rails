class CD < Product
  attr_accessor :album_name, :singer, :music_type, :year

  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp:true)
    CD.new({name:'cd', price: file_info[4].to_i, items_left: file_info[5].to_i}, file_info[0], file_info[1],
              file_info[2], file_info[3])
  end

  def initialize(param, album_name, singer, music_type, year)
    super(param)
    @album_name = album_name
    @singer = singer
    @music_type = music_type
    @year = year
  end

  def to_s
    "#{@name} #{@album_name} #{@singer} #{@music_type} #{@year} #{@price} (осталось #{@items_left})"
  end
end


