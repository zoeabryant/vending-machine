require 'coin'
require 'coin_handler'

describe CoinHandler do
  let(:coin_handler) {CoinHandler.new}

  context "add_coins" do
    
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

  context "sort_coins_by_value" do
    it "orders from highest value to lowest" do
      unordered = [FiftyPence.new, TwentyPence.new, TwoPounds.new, TenPence.new, TwoPence.new, OnePence.new, OnePound.new, FivePence.new]
      ordered = [TwoPounds,OnePound,FiftyPence,TwentyPence,TenPence,FivePence,TwoPence,OnePence]
      coins_returned = coin_handler.sort_coins_by_value(unordered)
      classes_of_coins = coins_returned.map{|coin| coin.class}
      expect(classes_of_coins).to match_array ordered
    end
  end

  context "split_into_coins" do

    context "when asked to split 3 pence" do

      let(:split_pls) { 3 }

      context "and it has the needed coins in stock" do
        
        it "returns a list of 3 OnePence Coins (smallest coins)" do
          stock = [TenPence.new, OnePence.new, OnePence.new, OnePence.new]
          correct_coin = [OnePence, OnePence, OnePence]
          coins_returned = coin_handler.split_into_coins(split_pls, stock)
          classes_of_coins = coins_returned.map{|coin| coin.class}
          expect(classes_of_coins).to match_array correct_coin
        end

        it "returns a list of 1 OnePence Coin and 1 TwoPence Coin (largest coins)" do
          stock = [OnePence.new, TwoPence.new, TwoPence.new, TenPence.new]
          correct_coin = [OnePence, TwoPence]
          coins_returned = coin_handler.split_into_coins(split_pls, stock)
          classes_of_coins = coins_returned.map{|coin| coin.class}
          expect(classes_of_coins).to match_array correct_coin
        end

      end

      it "returns nil if it does not have enough coins in stock" do
        stock = [OnePence.new, OnePence.new, TenPence.new]
        coins_returned = coin_handler.split_into_coins(split_pls, stock)
        expect(coins_returned).to be nil
      end

    end

    context "when asked to split 155 pence" do

      let(:split_pls) { 155 }

      context "and it has the needed coins in stock" do
        
        it "returns a list of 1  Coins and 1 FivePence coin" do
          stock = [FiftyPence.new, FiftyPence.new, FiftyPence.new, FiftyPence.new, FiftyPence.new, FivePence.new, TenPence.new]
          correct_coin = [FiftyPence, FiftyPence, FiftyPence, FivePence]
          coins_returned = coin_handler.split_into_coins(split_pls, stock)
          classes_of_coins = coins_returned.map{|coin| coin.class}
          expect(classes_of_coins).to match_array correct_coin
        end

        it "returns a list of 1 OnePound Coin, 1 FiftyPence Coin, 2 TwoPence Coin, 1 OnePence coin" do
          stock = [OnePound.new, OnePound.new, OnePound.new, FiftyPence.new, TwoPence.new, TwoPence.new, OnePence.new]
          correct_coin = [OnePound, FiftyPence, TwoPence, TwoPence, OnePence]
          coins_returned = coin_handler.split_into_coins(split_pls, stock)
          classes_of_coins = coins_returned.map{|coin| coin.class}
          expect(classes_of_coins).to match_array correct_coin
        end

      end

      it "returns nil if it does not have enough coins in stock" do
        stock = [OnePence.new, OnePence.new, TenPence.new]
        coins_returned = coin_handler.split_into_coins(split_pls, stock)
        expect(coins_returned).to be nil
      end

    end

  end

end