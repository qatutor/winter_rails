class CD < Product
  attr_accessor :album_name, :singer, :music_type, :year

  def self.from_file(file_path)
    file_info = File.readlines(file_path, chomp: true)
    CD.new({ product_name: 'cd',
                   price: file_info[4].to_i,
                   items_left: file_info[5].to_i,
                   album_name: file_info[0],
                   singer: file_info[1],
                   music_type: file_info[2],
                   year: file_info[3]
                 })
  end

  def initialize(param)
    super(param)
    @album_name = param[:album_name]
    @singer = param[:singer]
    @music_type = param[:music_type]
    @year = param[:year]
  end

  def update(param)
    super(param)
    @album_name = param[:album_name]
    @singer = param[:singer]
    @music_type = param[:music_type]
    @year = param[:year]
  end

  def to_s
    super(" #{@album_name} #{@singer} #{@music_type} #{@year}")
  end
end
