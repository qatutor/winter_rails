current_path = File.dirname(__FILE__)
file = File.new(current_path + '/data/holidays.txt', "r:UTF-8")
file_text = file.readlines

holidays = []
for file_line in file_text do
  holidays << file_line.chomp!
end

#time = Time.now.wday  strftime("%day")
time = Time.now
week_day = time.wday
today_date_month = time.strftime("%d.%m")
puts "#{today_date_month}"
    if  week_day == 0 || week_day == 6
        puts "Today is weekend"
    else
        puts "Today is working day"
        for holiday in holidays do
          if today_date_month == holiday
            return puts "Today is official holiday"
          end
        end
    end
