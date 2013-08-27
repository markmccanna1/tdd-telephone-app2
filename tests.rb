require 'rspec'

require_relative 'app2'

describe Pizza do
  let(:pizza) { Pizza.new("Mark's pizza", "sausage")}

  describe '#initialize' do
    it 'should have a name' do
      expect(pizza.name).to eql "Mark's pizza"
    end

    it 'should have a description' do
      expect(pizza.description).to eql "sausage"
    end

    it 'should have a bake time' do
      expect(pizza.bake_time).to eql 0
    end
  end

  #make a test that tests bake time = 0, for the third param

end
