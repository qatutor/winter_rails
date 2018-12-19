class Bodybuilder

  def initialize
    @triceps = 0
    @biceps = 0
    @deltovidka = 0
  end

  def pump(muscle)
    case muscle
    when "triceps"
      @triceps += 1
    when "biceps"
      @biceps += 1
    when "deltovidka"
      @deltovidka += 1
    else
      puts "Please enter the correct name"
    end
  end

  def show_muscles
    puts "Triceps: #{@triceps}"
    puts "Biceps: #{@biceps}"
    puts "Deltovidka: #{@deltovidka}"
  end

end
