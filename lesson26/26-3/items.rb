class Items
  DIR_PATH = __dir__ + '/data/'
  attr_accessor :item_name, :item_type, :temp_max, :temp_min, :files

  def show_all_items
    puts "Вам сейчас доступны вещи из списка:"
    get_files_in_dir
    get_all_items_by(:item_name)
  end

  def get_files_in_dir
    @files = Dir.glob(DIR_PATH + '*.txt')
  end

  def get_all_items_by(attribute_name)
    @files.each do |file_path|
      file_info = File.readlines(file_path, chomp:true)
      puts "#{eval(file_info[0])[attribute_name]}"
    end
  end

  def add_new_item?
    puts "Хотите добавить новую вещь? \n1 - да \n2 - нет"
    gets.to_i == 1
  end

  def ask_to_add_item
    add_new_item if add_new_item?
  end

  def create_new_file(file_name)
    file_dir = DIR_PATH + file_name + '.txt'
    File.new(file_dir, "a:UTF-8")
  end

  def add_info_to_file(file, item_name, item_type, temp_max, temp_min)
    file.puts({item_name: item_name, item_type: item_type, temp_max: temp_max, temp_min: temp_min})
  end

  def enter_info
    puts "Вам будет предложено заполнить три атрибута"
    puts "После окончания ввода для каждого атрибута нажимайте клавину Enter"

    puts "Название шмотки"
    print ":"
    @item_name = gets.chomp

    puts "Тип шмотки"
    print ":"
    @item_type = gets.chomp

    puts "Диапазон температур"
    puts "Максимальная температура"
    print ":"
    @temp_max = gets.to_i

    puts "Минимальная температура"
    print ":"
    @temp_min = gets.to_i
  end

  def add_new_item
    enter_info
    file = create_new_file(item_name)
    add_info_to_file(file, item_name, item_type, temp_max, temp_min)
  end
end