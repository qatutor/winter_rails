class Train
  attr_accessor :train_num, :station_name, :departure_time, :arrival_time

  def initialize(file_lines)
    @train_num = file_lines[0]
    @station_name = file_lines[1]
    @departure_time = file_lines[2]
    @arrival_time = file_lines[3]
  end

  def to_s

  end
end
