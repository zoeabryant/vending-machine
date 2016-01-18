require 'coin'

class CoinHandler

  def add_coins(coins)
    coin_values = coins.map { |coin| coin.value }
    coin_values.reduce(:+)
  end

  def sort_coins_by_value(coins)
    coins.sort_by { |coin| coin.value }.reverse!
  end

  def determine_possible_coins(pence, cache)
    coins = sort_coins_by_value(cache)

    remaining_pence = pence
    chosen_coins = []

    coins.each do | coin |
      result = remaining_pence - coin.value
      if result >= 0
        remaining_pence = result
        chosen_coins << coin
      end
    end

    chosen_coins
  end

  def split_into_coins(pence, cache)
    possible_coins = determine_possible_coins(pence, cache)
    possible_coins if add_coins(possible_coins) == pence
  end

end