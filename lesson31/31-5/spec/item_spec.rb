require 'rspec'
require 'item'

describe Item do
  let(:item) { Item.new('Ботинки', 'Обувь', 5, -20) }
  describe ".new" do
    it 'should create instance variables' do
      expect(item.item_name).to eq('Ботинки')
      expect(item.item_type).to eq('Обувь')
      expect(item.temp_max).to eq(5)
      expect(item.temp_min).to eq(-20)
    end
  end

  describe '#to_s' do
    it 'should print info about item' do
      expect(item.to_s).to eq("Ботинки Обувь -20..5")
    end
  end
end
