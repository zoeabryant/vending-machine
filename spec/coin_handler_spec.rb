require 'coin'
require 'coin_handler'

describe CoinHandler do

  context "add_coins" do

    let(:coin_handler) {CoinHandler.new}
    
    it "returns 3 when given a list of 3 OnePence Coins" do
      coins = [OnePence.new, OnePence.new, OnePence.new]
      expect(coin_handler.add_coins(coins)).to eql 3
    end

    it "returns 5 when given a list of 1 OnePence Coin and 2 TwoPence Coins" do
      coins = [OnePence.new, TwoPence.new, TwoPence.new]
      expect(coin_handler.add_coins(coins)).to eql 5
    end

    it "returns 100 when given a list of 2 FiftyPence Coins" do
      coins = [FiftyPence.new, FiftyPence.new]
      expect(coin_handler.add_coins(coins)).to eql 100
    end

    it "returns 100 when given a list of a OnePound Coin" do
      coins = [OnePound.new]
      expect(coin_handler.add_coins(coins)).to eql 100
    end

    it "returns 423 when given a list of Coins" do
      coins = [
        TwoPounds.new,
        OnePound.new,
        FiftyPence.new,
        TwentyPence.new,
        TwentyPence.new,
        TenPence.new,
        TenPence.new,
        TenPence.new,
        TwoPence.new,
        OnePence.new
      ]
      expect(coin_handler.add_coins(coins)).to eql 423
    end

  end

end