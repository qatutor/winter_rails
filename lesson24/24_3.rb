$a = "hello a"
b = "hello b"

def my_meth
  c = "hello c"
  puts "checking inside the method"
  #check_variable($a)
  #check_variable(c)
  #check_variable(b)
end

def check_variable(varibale_name)
  begin
   puts "The variable #{varibale_name} is defined." if defined? varibale_name
  rescue NameError => error
    puts "The variable #{varibale_name} is not defined."
  end
end


check_variable($a)
check_variable(b)
check_variable(c)
