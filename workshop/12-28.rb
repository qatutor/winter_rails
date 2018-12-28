class Person
  attr_accessor :name, :last_name, :year

  def initialize(name, last_name, year)
    @name = name
    @last_name = last_name
    @year = year
  end

  def count_age
    time = Time.now
    time.year - @year
  end

  def person_info
    "#{year}: #{name} #{last_name} (#{count_age})"
  end
end

persons = []
persons << Person.new("Michael", "Test1", 1986)
persons << Person.new("Vadim", "Test2", 1984)
persons << Person.new("Joe", "Test3", 1988)

persons.sort_by! {|person| person.year}

persons.each do |person|
  puts person.person_info
end

#
=begin
names = {Vadim: 'Test1', Vladimir: 'Test2', Alex: 'Test3'}

new_names = {}
names.each do |name, last_name|
  new_names[name.to_s.reverse] = last_name.reverse!
end

new_names.each do | name, last_name|
puts "#{name} #{last_name}"
end
=end