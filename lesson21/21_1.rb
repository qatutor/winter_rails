
repeat_times = ARGV[0].to_i

if repeat_times.nil? || repeat_times == 0
  10.times do
    sleep 1
    puts Time.now
  end
elsif repeat_times > 0
  repeat_times.times do
    sleep 1
    puts Time.now
  end
else
  puts "Please execute the file with an argument."
end


