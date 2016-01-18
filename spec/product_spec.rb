require 'product'

describe Product do
  
  let(:product) { Product.new(50, "twix") }
  
  it "has a value in pence" do
    expect(product.value).to eql 50
  end
  
  it "has a name" do
    expect(product.name).to eql "twix"
  end

  context "a fanta orange" do
    let(:fanta) { Product.new(149, "fanta orange") }

    it "has a value of 149 in pence" do
      expect(fanta.value).to eql 149
    end
    
    it "has the name fanta orange" do
      expect(fanta.name).to eql "fanta orange"
    end
  end
end