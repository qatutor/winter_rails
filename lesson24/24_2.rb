a = nil
b = Time.new
def check_variable(varibale_name)
  if defined? varibale_name
    puts "The variable #{varibale_name} is defined."
  else
    puts "The variable #{varibale_name} is not defined."
  end
end

check_variable(a)
check_variable(b)

