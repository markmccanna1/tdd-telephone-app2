require 'rspec'

require_relative 'app2'

describe Pizza do
  let(:pizza) { Pizza.new("Mark's pizza", "sausage")}

  describe '#initialize' do
    context "after initialization" do
      it 'should have a name' do
        expect(pizza.name).to eql "Mark's pizza"
      end

      it 'should have a description' do
        expect(pizza.description).to eql "sausage"
      end

      it 'should have a time baked' do
        expect(pizza.time_baked).to eql 0
      end
    end
  end
end
