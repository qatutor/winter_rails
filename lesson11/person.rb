require './kettle.rb'

class Person

  def press_the_button
    Kettle.new.boil_water(true)
  end

end
