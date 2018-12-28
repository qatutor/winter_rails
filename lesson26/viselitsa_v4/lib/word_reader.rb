# encoding: utf-8
#
# Класс WordReader, отвечающий за чтение слова для игры.
class WordReader
  def read_from_args
    ARGV[0]
  end

  def read_from_file(file_name)
    nil if !File.exist?(file_name)
=begin
    f = File.new(file_name, "r:UTF-8")
    lines = f.readlines
    f.close
=end
    lines = File.readlines(file_name)
    lines.sample.chomp
  end
end
