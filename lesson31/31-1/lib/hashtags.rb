#test Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам!

def hashtags(text)
  text.scan(/[#][\w\p{L}\d_-]+/i)
end
