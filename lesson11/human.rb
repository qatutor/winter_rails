class Human

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @year = age
  end

  def print_name
    if what_age == "Old person"
      puts "#{@first_name.to_s} #{@last_name.to_s}"
    else
      puts "#{@first_name.to_s}"
    end
    puts "#{what_age.to_s}"
  end

  def what_age
    if @year > 60
      return "Old person"
    else
      return "Young person"
    end
  end


end
