class CustomerApplication

  def initialize(age, person, income, credit_history, credit)
    @age = age
    @person = person
    @income = income
    @credit_history = credit_history
    @credit = credit
    @score = 0
  end

  def calc_based_on_age
    if @age >= 21 && @age <= 40
      return @score += 10
    end
    if @age >40
      return @score += 20
    end
  end

  def calc_based_on_person
    if @person == "женщина"
      return @score += 10
    end
  end

  def calc_based_on_income
    if @income >= 20001 && @income <= 40000
      return @score += 10
    end
    if @income > 40000
      return @score += 20
    end
  end

  def calc_based_on_credit_history
    if @credit_history == "есть"
      return @score += 20
    end
  end

  def calc_based_on_credit
    if @credit < 20000
      return @score += 20
    end
    if @credit >= 20001  && @credit >= 40000
      return @score += 10
    end
  end

  def calculate_score
    calc_based_on_age
    calc_based_on_credit
    calc_based_on_income
    calc_based_on_person
    calc_based_on_credit_history
  end

  def approved?
    if @score >= 50
      true
    else
      false
    end
  end
end
