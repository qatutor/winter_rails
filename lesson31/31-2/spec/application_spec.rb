require 'rspec'
require_relative '../lib/application'

describe 'Application' do
  before :each do
    @customer_appitcation = Application.new(24, "женщина",
                                            40000, 'есть', 40000)
  end
    describe "#new" do
      it 'create an object with all valid parameters' do
        expect(@customer_appitcation.age).to eq(24)
        expect(@customer_appitcation.person).to eq("женщина")
        expect(@customer_appitcation.income).to eq(40000)
        expect(@customer_appitcation.credit_history).to eq("есть")
        expect(@customer_appitcation.credit).to eq(40000)
    end
    end
    describe "#calculate_score" do
      it 'calculates result score' do
        expect(@customer_appitcation.calculate_score). to eq(60)
      end
    end
    describe "#approved?" do
      it 'score approved' do
        expect(@customer_appitcation.approved?).to be(true)
      end
    end
end