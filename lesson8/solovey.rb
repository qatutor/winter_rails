
temperature = ARGV[0]
season = ARGV[1]

#check if arguments are empty
if (temperature == nil || season == nil)
    puts "Какая сейчас температура?"
    temperature = STDIN.gets
    puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
    season = STDIN.gets
end

temperature = temperature.to_i
season = season.to_i

def say_if_bird_sings(temperature, season)
  if season == 1
    if (temperature >= 15 and temperature <= 35)
        puts "Скорее идите в парк, соловьи поют!"
    else puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
    end
  else
    if (temperature >= 22 and temperature <= 30)
      puts "Скорее идите в парк, соловьи поют!"
    else
      puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
    end
  end
end

say_if_bird_sings(temperature, season)
