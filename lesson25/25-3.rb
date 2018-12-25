food = {
    juce: '1',
    carrot: '2',
    chicken: '3'
}

goods = {
    papertowel: '4',
    soap: '2',
    toothbrash: '6'
}

common_list = food.merge(goods)
puts "*** Common list ***"
common_list.each {|key, value| puts "#{key} is #{value}" }