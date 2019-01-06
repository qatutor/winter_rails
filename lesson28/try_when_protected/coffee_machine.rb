class CoffeeMachine
  def make_coffee
    get_water(200)
    get_beans(50)
  end


  def get_water(mls)
    puts "Get water #{mls}"
  end


  def get_beans(mls)
    puts "Get beans #{mls}"
  end
end