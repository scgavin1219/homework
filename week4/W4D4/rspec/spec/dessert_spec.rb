require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: 'Tucker') }
  let(:brownie) { Dessert.new('brownie', 100, chef) }

  describe "#initialize" do
    it "sets a type" do 
      expect(brownie.type).to eq('brownie')
    end

    it "sets a quantity" do 
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "lots", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      brownie.add_ingredient('milk')
      expect(brownie.ingredients).to include("milk")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['chocolate', 'peanuts', 'pecans', 'eggs']

        ingredients.each do |ingredient|
          brownie.add_ingredient(ingredient)
        end
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      brownie.eat(10)
      expect(brownie.quantity).to eq(90)
    end
 

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(110)}.to raise_error("not enough brownies")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
