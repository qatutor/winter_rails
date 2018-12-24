variable = 'defined_variable'

class MyClass
  def initialize
    @variable = 'instance_variable'
  end

  def check_variables
    puts "\nLet's check variables in MyClass"
    print "variable is: "
    defined?(variable).nil? ? print("not defined") : print("#{defined?(variable)}")
    puts
    print "@variable is: "
    defined?(@variable).nil? ? print("not defined") : print("#{defined?(@variable)}")
  end
end

my_class = MyClass.new
my_class.check_variables

puts "\n \nLet's check variables in main program:"
print "variable is: "
defined?(variable).nil? ? print("not defined") : print("#{defined?(variable)}")
puts
print "@variable is: "
defined?(@variable).nil? ? print("not defined") : print("#{defined?(@variable)}")
