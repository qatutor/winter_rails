require_relative 'coffee_machine'
require_relative 'cappuccino_machine'

bosh = CoffeeMachine.new
bosh.get_beans(500)
#bosh.make_coffee

bosh_with_milk = CappuccinoMachine.new
#bosh_with_milk.get_beans(50)
#bosh_with_milk.create_foam
