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

      it 'should have toppings' do
        expect(pizza.toppings).to eql []
      end
    end
  end

  describe '#add_toppings' do

    it "should be able to receive toppings" do
      topping = mock("topping")
      pizza.add_toppings(topping)
      expect(pizza.toppings.first).to eq topping
    end
  end


  describe '#bake' do

    it "should increment the time baked of the pizza" do
      pizza.bake(5)
      expect(pizza.time_baked).to eq 5
    end

    it "should invoke bake method on toppings" do
      topping = mock("topping")
      topping.should_receive(:bake)
      pizza = stub.(:toppings => topping)
      pizza.bake
    end
  end
end

describe Topping do
  let(:topping) {Topping.new("sausage", 10)}

  describe '#initialize' do
    it 'should have a name' do
      expect(topping.name).to eql "sausage"
    end

    it 'should have a required bake time' do
      expect(topping.required_bake_time).to eql 10
    end

    it 'should have a time baked of 0' do
      expect(topping.time_baked).to eql 0
    end
  end

end
