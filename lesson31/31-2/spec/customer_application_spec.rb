require 'rspec'

describe 'CustomerApplication' do

  it 'should execute a method initialize' do
    expect(CustomerApplication.new(24, "женщина", 40000, 'есть', 20000))
  end
end