class Application
  attr_accessor :age, :person, :income, :credit_history, :credit

  def initialize(age, person, income, credit_history, credit)
    @age = age
    @person = person
    @income = income
    @credit_history = credit_history
    @credit = credit
  end

  def calc_based_on_age
    return 10 if @age >= 21 && @age <= 40
    return 20 if @age >40
  end

  def calc_based_on_person
    return 10 if @person == "женщина"
  end

  def calc_based_on_income
    return 10 if @income >= 20000 && @income <= 40000
    return 20 if @income > 40000
  end

  def calc_based_on_credit_history
    return 20 if @credit_history == "есть"
  end

  def calc_based_on_credit
    return 20 if @credit < 20000
    return 10 if @credit >= 20000  && @credit >= 40000
  end

  def calculate_score
    calc_based_on_age.to_i + calc_based_on_credit.to_i + calc_based_on_income.to_i + calc_based_on_person.to_i +
        calc_based_on_credit_history.to_i
  end

  def approved?
    calculate_score >= 50
  end
end
