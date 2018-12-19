require './body_builder.rb'

def pump_times( man, body_part, times )
  for index in 1..times
  man.pump(body_part)
  end
end

man1 = Bodybuilder.new
puts "The first bodybuilder: "
pump_times(man1,"triceps", 3)
pump_times(man1, "biceps", 2)
pump_times(man1, "deltovidka", 1)
man1.show_muscles
puts

man2 = Bodybuilder.new
puts "The second bodybuilder: "
pump_times(man2,"triceps", 5)
pump_times(man2, "biceps", 2)
pump_times(man2, "deltovidka", 7)
man2.show_muscles
puts

man3 = Bodybuilder.new
puts "The third bodybuilder: "
pump_times(man3,"triceps", 1)
pump_times(man3, "biceps", 2)
pump_times(man3, "deltovidka", 1)
man3.show_muscles
puts
