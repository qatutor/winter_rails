require 'rspec'
require 'item_collection'

describe ItemCollection do
  let(:item_collection) { ItemCollection.new(["#{__dir__}/fixtures/Ботинки.txt"]) }
  describe '.new' do
    it 'should create an object of type Item' do
      expect(item_collection.items[0]).to be_an_instance_of(Item)
    end
  end

  describe '#get_suitable_items' do
    it 'should return an object which has instance variables of different types' do
      item = item_collection.get_suitable_items(-5)[0]
      expect(item.item_name).to eq('Ботинки')
      expect(item.item_type).to eq('Обувь')
      expect(item.temp_max).to eq(5)
      expect(item.temp_min).to eq(-20)
    end
  end
end
