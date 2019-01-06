class CappuccinoMachine < CoffeeMachine
  def create_foam
    prepare_milk
    push_foam
  end


  private


  def push_foam
    puts "Pushing foam"
  end

  def prepare_milk
    puts "Boiling milk"
  end
end