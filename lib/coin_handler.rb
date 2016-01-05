class CoinHandler

  def add_coins(coins)
    coin_values = coins.map { |coin| coin.value }
    coin_values.reduce(:+)
  end

end