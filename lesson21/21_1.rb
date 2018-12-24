repeat_times = ARGV[0].to_i

def do_block(repeat_times)
  repeat_times.times do
    sleep 1
    puts Time.now
  end
end

if repeat_times.nil? || repeat_times == 0
  do_block(10)
elsif repeat_times > 0
  do_block(repeat_times)
else
  puts "Please execute the file with an argument."
end

