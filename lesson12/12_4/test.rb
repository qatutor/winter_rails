class Test

  def initialize
    @score = 0
    @questions = [
      "Переживаете ли вы в ожидании важной деловой встречи?",
      "Если вам поручат выступить с докладом на каком либо мероприятии, вызовет ли это у вас чувство дискомфорта?",
      "Вы откладываете поход к врачу до последнего момента?",
      "Если вам предстоит командировка в незнакомый город, постараетесь ли вы избежать этой командировки?",
      "Вы делитесь своими мыслями и чувствами с кем бы то ни было?",
      "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом?",
      "Вы думаете, что людям разных поколений действительно трудно понимать друг друга?",
      "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, взятые у вас несколько месяцев назад?",
      "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
      "Вы заговорите с незнакомым человеком, оставшись с ним наедине?",
      "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее?",
      "Вам неприятно быть судьей в чужих конфликтах?",
      "Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь к чужому мнению?",
      "Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос, вы предпочтете промолчать и не исправлять его?",
      "Просьбы помочь в учебе или работе раздражают вас?",
      "Вам проще изложить свое мнение на бумаге, чем рассказать о нем?"
    ]
  end

  def count_score(user_choice)
    if user_choice == "a"
      @score += 2
    elsif user_choice == "c"
      @score += 1
    else
      @score += 0
    end
  end

  def check_user_input
    user_choice = gets.chomp.downcase
    puts user_choice
    while (user_choice != "a" && user_choice != "b" && user_choice != "c")
      user_choice = gets.chomp.downcase
    end
    user_choice
  end

  def run_test
    choices = ["a - да","b - нет","c - иногда"]
    puts "Пройдите тест «Ваш уровень общительности»."

    for question in @questions do
      puts question
      puts choices
      user_choice = check_user_input
      count_score(user_choice)
    end
  end

  def get_score
    @score
  end

end
