require './bridge.rb'

puts "Lets go"

bridge = Bridge.new

  if !bridge.is_opened?
    bridge.open
  end

puts bridge.is_opened?.to_s

  if !bridge.is_opened?
    bridge.open
  end
