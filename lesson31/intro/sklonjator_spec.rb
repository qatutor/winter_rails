require 'rspec'
require_relative 'sklonjator'

describe 'Sklonjator' do

  it 'should be ok for KROKODILOV' do
    expect(Sklonjator.sklonenie(5, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodilov'
  end

  it 'should be ok for KROKODILOV' do
    [5, 6, 7, 8, 9, 0].each do |number|

      (0..100).step(10) do |i|
        sum = i + number

        expect(Sklonjator.sklonenie(sum,'krokodil', 'krokodila', 'krokodilov', true)).to eq "#{sum}krokodilov"
      end
    end
  end
end