require_relative 'child'

child = Child.new("Jhon")
child.name
puts "#{child.obedient.to_s}"

parent = Parent.new("Peter")
parent.name
puts "#{parent.obedient.to_s}"