require 'coin'

# 1p, 2p, 5p, 10p, 20p, 50p, £1, £2

describe Coin do

  let(:coin) { Coin.new(50) }
  
  it "has a value in pence" do
    expect(coin.value).to eql 50
  end

end

describe OnePence do

  it "has a value in pence: 1" do
    expect(OnePence.new.value).to eql 1
  end

end

describe TwoPence do

  it "has a value in pence: 2" do
    expect(TwoPence.new.value).to eql 2
  end

end

describe FivePence do

  it "has a value in pence: 5" do
    expect(FivePence.new.value).to eql 5
  end

end

describe TenPence do

  it "has a value in pence: 10" do
    expect(TenPence.new.value).to eql 10
  end

end

describe TwentyPence do

  it "has a value in pence: 20" do
    expect(TwentyPence.new.value).to eql 20
  end

end

describe FiftyPence do

  it "has a value in pence: 50" do
    expect(FiftyPence.new.value).to eql 50
  end

end

describe OnePound do

  it "has a value in pence: 100" do
    expect(OnePound.new.value).to eql 100
  end

end

describe TwoPounds do

  it "has a value in pence: 200" do
    expect(TwoPounds.new.value).to eql 200
  end

end